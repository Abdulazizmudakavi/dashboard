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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(controller.moneyList.length, (index) {
          final moneyData = controller.moneyList[index];
          return Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5,),
              padding: EdgeInsets.only(bottom: 20,left: 15,),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                
                border: Border.all(color: Color(0xff0095FF), width: 1.0),
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
                                fontWeight: FontWeight.normal),
                          ),
                          Checkbox(
                            value: moneyData['isChecked'].value,
                            onChanged: (bool? value) {
                              controller.toggleCheckbox(index);
                            },

                            checkColor: Color(
                                0xFF0055BB), 
                            fillColor:
                               WidgetStateProperty.resolveWith((states) {
                              return Colors
                                  .white; 
                            }),
                            side:WidgetStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                  width: 1.0, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                  SizedBox(height: 5),
                 
                  Text(
                    '\$${moneyData['amount'] ?? 0}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DmSans',
                      color: Color(0xff0355b8),
                    ),
                  ),
                  SizedBox(height: 5),
                 
                  Text(
                    moneyData['description'] ?? '',
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'DmSans',
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
