import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class MoneyView extends GetView<DashboardController> {
  MoneyView({super.key});
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(controller.moneyList.length, (index) {
          final moneyData = controller.moneyList[index];
          return Expanded(
            child: Container(
              margin: EdgeInsets.only(
                  right: index == controller.moneyList.length - 1 ? 0 : 8),
              padding: EdgeInsets.only(bottom: 20, left: 10, right: 0, top: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xff0095FF), width: 1.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        moneyData['title'],
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'DmSans',
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      Checkbox(
                        value: moneyData['isChecked'].value,
                        onChanged: (bool? value) {
                          controller.toggleMoneyCheckbox(index);
                        },
                        checkColor: Color(0xFF0055BB),
                        fillColor: WidgetStateProperty.all(Colors.white),
                        side: BorderSide(width: 1.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    '\$${moneyData['amount'] ?? 0}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0355b8),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    moneyData['description'] ?? '',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      );
    });
  }
}
