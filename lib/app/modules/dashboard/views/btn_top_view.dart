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
        Obx(
          () => PopupMenuButton<String>(
            position: PopupMenuPosition.under,
            offset: const Offset(0, 3.5),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide( color: Color(0xFFE0E0E0), width: 1),
            ),
            color: Color(0xFFFFFFFF),

            initialValue: controller.selectedOption.value,
            onSelected: (String value) {
              controller.selectedOption.value = value;
            },
           
            itemBuilder: (BuildContext context) {
              return controller.dropdownOptions.map((String item) {
                return PopupMenuItem<String>(
                  value: item,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item,
                        style:
                            const TextStyle(fontSize: 14, letterSpacing: -0.35),
                      ),
                      Icon(
                        controller.selectedOption.value == item
                            ? Icons.radio_button_checked
                            : Icons.radio_button_unchecked,
                        color: Color(0xff383838),
                      ),
                    ],
                  ),
                );
              }).toList();
            },
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xff0095FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                side: const BorderSide(
                  color: Color(0xff0095FF),
                  width: 1,
                ),
              ),
              onPressed: null,
              child: Row(
                children: [
                  Text(
                    controller.selectedOption.value == 'Clear'
                        ? 'Date'
                        : controller.selectedOption.value,
                    style: const TextStyle(
                      fontSize: 14,
                      letterSpacing: -0.35,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.arrow_drop_down, color: Colors.black),
                ],
              ),
            ),
          ),
        ),
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
