import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class FourdashboardsView extends GetView<DashboardController> {
  FourdashboardsView({super.key});
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            return Column(
              children: List.generate(controller.chartList.length, (index) {
                final chartData = controller.chartList[index];

                List<PieChartSectionData> sections = [];
                (chartData['data'] as Map<String, int>).forEach((key, value) {
                  Color color = chartData['colors'][key] ?? Colors.grey;
                  sections.add(
                    PieChartSectionData(
                      value: value.toDouble(),
                      color: color,
                      title: '',
                      radius: 15,
                    ),
                  );
                });

                print("Rendering chart for title: ${chartData['title']}");
                print("Sections: $sections");

                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(bottom: 20, left: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff0095FF), width: 1.0),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            chartData['title'],
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'DmSans',
                                fontWeight: FontWeight.normal),
                          ),
                          Checkbox(
                            value: chartData['isChecked'].value,
                            onChanged: (bool? value) {
                              controller.toggleCheckbox(index);
                            },
                            checkColor: Color(0xFF0055BB),
                            fillColor:
                                WidgetStateProperty.resolveWith((states) {
                              return Colors.white;
                            }),
                            side: WidgetStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                  width: 1.0, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: PieChart(
                                  PieChartData(
                                    sectionsSpace: 0,
                                    centerSpaceRadius: 40,
                                    sections: sections,
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Text(
                                  '${(chartData['data'].values as Iterable<int>).reduce((int a, int b) => a + b)} ${chartData['title'].split(':')[0]}',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'DmSans',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: (chartData['data'] as Map<String, int>)
                                .entries
                                .map((entry) {
                              String key = entry.key;
                              int value = entry.value;
                              Color color =
                                  chartData['colors'][key] ?? Colors.grey;
                              return Row(
                                children: [
                                  Container(
                                    width: 4,
                                    height: 12,
                                    color: color,
                                  ),
                                  SizedBox(width: 8),
                                  Text('$key $value',
                                      style: TextStyle(fontSize: 12)),
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          }),
        ],
      ),
    );
  }
}
