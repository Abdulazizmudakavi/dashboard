import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/app/modules/dashboard/controllers/dashboard_controller.dart';

class FourdashboardsView extends GetView<DashboardController> {
  FourdashboardsView({super.key});

  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(controller.chartList.length, (index) {
              var chartData = controller.chartList[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 10,
                  right: 10,
                  bottom: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border:
                      Border.all(color: const Color(0xff0095FF), width: 1.0),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => Text(
                              chartData['title'],
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            )),
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {},
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(
                                width: 1.0, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
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
                                  sections:
                                      chartData['data'].entries.map((entry) {
                                    return PieChartSectionData(
                                      value: entry.value.toDouble(),
                                      color: chartData['colors'][entry.key],
                                      title: '',
                                      radius: 15,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Obx(() => Text(
                                    '${chartData['data'].values.reduce((a, b) => a + b)} ${chartData['title'].split(":")[0]}',
                                    style: const TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: chartData['data'].entries.map((entry) {
                            return Row(
                              children: [
                                Container(
                                  width: 4,
                                  height: 12,
                                  color: chartData['colors'][entry.key],
                                ),
                                const SizedBox(width: 8),
                                Obx(() => Text(
                                      '${entry.key} ${entry.value}',
                                      style: const TextStyle(fontSize: 12),
                                    )),
                              ],
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          )),
    );
  }
}
