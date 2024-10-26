import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BtnTopView extends GetView {
  const BtnTopView({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, 
            ),
            side: BorderSide(
                color: Color(0xff0055bb),
                width: 1), 
          ),
          child: Text(
            'This Week',
            style: TextStyle(fontSize: 14),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, 
            ),
            side: BorderSide(
                color: Color(0xff0055bb),
                width: 1), 
          ),
          child: Text(
            'Save',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}