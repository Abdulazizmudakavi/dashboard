import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class ResponseSummaryView extends GetView<DashboardController> {
  ResponseSummaryView({super.key});
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Container(
    
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            return Column(
              children: List.generate(controller.responseList.length, (index) {
                final responseData = controller.responseList[index];

                List<PieChartSectionData> sections = [];
                (responseData['data'] as Map<String, double>)
                    .forEach((key, value) {
                  Color color = responseData['colors'][key] ?? Colors.grey;
                  sections.add(
                    PieChartSectionData(
                      value: value,
                      color: color,
                      title: '',
                      radius: 15,
                    ),
                  );
                });

                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(bottom: 20, left: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff0095FF), width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(() => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                responseData['title'],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Checkbox(
                            value: responseData['isChecked'].value,
                            onChanged: (bool? value) {
                              controller.toggleResponseCheckbox(index);
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
                          )),
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
                                  '24 Leads',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                (responseData['data'] as Map<String, double>)
                                    .entries
                                    .map((entry) {
                              String key = entry.key;
                              double value = entry.value;
                              Color color =
                                  responseData['colors'][key] ?? Colors.grey;
                              return Row(
                                children: [
                                  Container(
                                    width: 4,
                                    height: 12,
                                    color: color,
                                  ),
                                  SizedBox(width: 8),
                                  Text('$key ${value.toStringAsFixed(2)}%',
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
