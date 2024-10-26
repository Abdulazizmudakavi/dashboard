import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MoneyView extends GetView {
  const MoneyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 0,
                left: 10,
                right: 15,
                bottom: 10,
              ), 
              decoration: BoxDecoration(
                color: Colors.white, 
                border: Border.all(color: Color(0xff0095FF), 
                  width: 1.0, 
                ),
                borderRadius:
                    BorderRadius.circular(8.0), 
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Money In'),
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                        side: WidgetStateBorderSide.resolveWith(
                          (states) =>
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Text('\$ 2,450',
                   style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                       color: Color(0xff0355b8),
                    ),),
                  Text(
                    '(Invoices marked paid)',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 0,
                left: 10,
                right: 15,
                bottom: 10,
              ), 
              decoration: BoxDecoration(
                color: Colors.white, 
               border: Border.all(color: Color(0xff0095FF), 
                  width: 1.0, 
                ),
                borderRadius:
                    BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Money Out'),
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                        side: WidgetStateBorderSide.resolveWith(
                          (states) =>
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Text('\$ 200',
                   style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                       color: Color(0xff0355b8),
                    ),),
                  Text(
                    '(Purchases/Expenses made)',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}