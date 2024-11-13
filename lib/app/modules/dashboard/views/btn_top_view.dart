import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BtnTopView extends GetView {
  const BtnTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PopupMenuButton<String>(
          onSelected: (value) {
            print("Selected: $value");
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'Today',
              child: Text('Today'),
            ),
            const PopupMenuItem<String>(
              value: 'This Week',
              child: Text('This Week'),
            ),
            const PopupMenuItem<String>(
              value: 'This Month',
              child: Text('This Month'),
            ),
            const PopupMenuItem<String>(
              value: 'This Year',
              child: Text('This Year'),
            ),
          ],
          child: ElevatedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: BorderSide(color: Color(0xff0095FF), width: 1),
            ),
            child: Row(
              children: [
                Text(
                  'This Week',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.arrow_drop_down, color: Colors.black),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            side: BorderSide(color: Color(0xff0095FF), width: 1),
          ),
          child: Text(
            'Save',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
