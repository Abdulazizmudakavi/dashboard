import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';
// import 'package:custom_rating_bar/custom_rating_bar.dart';

class InsightsView extends GetView<DashboardController> {
  InsightsView({super.key});
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xff0095FF), width: 1.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Client Insights",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                Checkbox(
                 value: controller.insightsList
                      .every((item) => item['isChecked'].value),
                   onChanged: (bool? value) {
                    if (value != null) {
                      for (var item in controller.insightsList) {
                        item['isChecked'].value = value;
                      }
                    }
                  },
                  checkColor: const Color(0xFF0055BB),
                  fillColor: WidgetStatePropertyAll(Colors.white),
                  side: const BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Client Rating",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Percentage",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Service Value",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ...List.generate(controller.insightsList.length, (index) {
              final insightsData = controller.insightsList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(5, (starIndex) {
                        return Icon(
                          starIndex < insightsData['clientRating']
                              ? Icons.star
                              : Icons.star_border,
                          color: Colors.orange,
                          size: 20,
                        );
                      }),
                    ),

                    Text(
                      "${insightsData['percentage']}%",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                         fontWeight: FontWeight.normal,
                      ),
                    ),

                   
                    Text(
                      insightsData['serviceValue'],
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                         fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      );
    });
  }
}
