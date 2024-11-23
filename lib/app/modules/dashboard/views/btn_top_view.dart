import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class BtnTopView extends GetView<DashboardController> {
  BtnTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(() => PopupMenuTheme(
              data: PopupMenuThemeData(
                color: Colors.white, 
              ),
              child: PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'Clear') {
                    controller.selectedOption.value = 'Date';
                  } else {
                    controller.selectedOption.value = value;
                  }
                },
                offset: const Offset(0, 50), 
                itemBuilder: (BuildContext context) {
                  return controller.dropdownOptions
                      .map<PopupMenuEntry<String>>((String value) {
                    return PopupMenuItem<String>(
                      value: value,
                      child: Container(
                        decoration: BoxDecoration(
                          color: controller.selectedOption.value == value
                              ? Colors.grey[300]
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 8.0),
                        child: Row(
                          children: [
                            Text(
                              value,
                              style: TextStyle(
                                fontSize: 14, 
                                fontWeight: FontWeight.normal,
                                color: controller.selectedOption.value == value
                                    ? Colors.black 
                                    : Colors.black, 
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              controller.selectedOption.value == value
                                  ? Icons.radio_button_checked 
                                  : Icons.radio_button_unchecked, 
                              size: 24, 
                              color: controller.selectedOption.value == value
                                  ? Colors.black 
                                  : Colors.black, 
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList();
                },
                child: ElevatedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    side: const BorderSide(color: Color(0xff0095FF), width: 1),
                  ),
                  child: Row(
                    children: [
                      Text(
                        controller.selectedOption.value, 
                        style: const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.arrow_drop_down, color: Colors.black),
                    ],
                  ),
                ),
              ),
            )),

       
        OutlinedButton(
          onPressed: () {
            print('Save button clicked!');
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            side: const BorderSide(color: Color(0xff0095FF), width: 1),
          ),
          child: const Text(
            'Save',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
