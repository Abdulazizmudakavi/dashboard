// // import 'package:dashboard/app/modules/dashboard/controllers/dashboard_controller.dart';
// // import 'package:flutter/material.dart';
// // // import 'package:fl_chart/fl_chart.dart';
// // import 'package:get/get.dart';
// // import 'package:custom_rating_bar/custom_rating_bar.dart';

// // class InvoicesResponseView extends GetView {
// //   InvoicesResponseView({super.key});
// //   final DashboardController controller = Get.put(DashboardController());
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       padding: EdgeInsets.only(top: 20),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.center,
// //         children: [
// //           SizedBox(
// //             height: 20,
// //           ),
// //           Container(
// //             padding: EdgeInsets.only(
// //               top: 0,
// //               bottom: 20,
// //               left: 10,
// //               right: 10,
// //             ),
// //             decoration: BoxDecoration(
// //               color: Colors.white,
// //               border: Border.all(color: Color(0xff0095FF), width: 1.0),
// //               borderRadius: BorderRadius.circular(8),
// //             ),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Text(
// //                       'Client Insights',
// //                       style: TextStyle(
// //                         fontSize: 12,
// //                         fontWeight: FontWeight.normal,
// //                       ),
// //                     ),
// //                     Checkbox(
// //                       value: false,
// //                       onChanged: (bool? value) {},
// //                       side: MaterialStateBorderSide.resolveWith(
// //                         (states) =>
// //                             const BorderSide(width: 1.0, color: Colors.grey),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 SizedBox(height: 0),
// //                 Table(
// //                   columnWidths: const <int, TableColumnWidth>{
// //                     0: FlexColumnWidth(2),
// //                     1: FlexColumnWidth(2),
// //                     2: FlexColumnWidth(2),
// //                   },
// //                   defaultVerticalAlignment: TableCellVerticalAlignment.middle,
// //                   children: [
// //                     TableRow(
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.all(8.0),
// //                           child: Text(
// //                             'Client Rating',
// //                             style: TextStyle(fontWeight: FontWeight.bold),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(8.0),
// //                           child: Text(
// //                             'Percentage',
// //                             style: TextStyle(fontWeight: FontWeight.bold),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(8.0),
// //                           child: Text(
// //                             'Service Value',
// //                             style: TextStyle(fontWeight: FontWeight.bold),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     TableRow(
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: RatingBar.readOnly(
// //                             initialRating: 5,
// //                             emptyIcon: Icons.star_border,
// //                             size: 20,
// //                             filledIcon: Icons.star,
// //                             emptyColor: Color(0xffF0B51C),
// //                             filledColor: Color(0xffF0B51C),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: Text('10%'),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: Text('\$ 17,000'),
// //                         ),
// //                       ],
// //                     ),
// //                     TableRow(
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: RatingBar.readOnly(
// //                             initialRating: 4,
// //                             emptyIcon: Icons.star_border,
// //                             size: 20,
// //                             filledIcon: Icons.star,
// //                             emptyColor: Color(0xffF0B51C),
// //                             filledColor: Color(0xffF0B51C),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: Text('50%'),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: Text('\$ 19,000'),
// //                         ),
// //                       ],
// //                     ),
// //                     TableRow(
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: RatingBar.readOnly(
// //                             initialRating: 3,
// //                             emptyIcon: Icons.star_border,
// //                             size: 20,
// //                             filledIcon: Icons.star,
// //                             emptyColor: Color(0xffF0B51C),
// //                             filledColor: Color(0xffF0B51C),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: Text('20%'),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: Text('\$ 20,000'),
// //                         ),
// //                       ],
// //                     ),
// //                     TableRow(
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: RatingBar.readOnly(
// //                             initialRating: 2,
// //                             emptyIcon: Icons.star_border,
// //                             size: 20,
// //                             filledIcon: Icons.star,
// //                             emptyColor: Color(0xffF0B51C),
// //                             filledColor: Color(0xffF0B51C),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: Text('10%'),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: Text('\$ 8,000'),
// //                         ),
// //                       ],
// //                     ),
// //                     TableRow(
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: RatingBar.readOnly(
// //                             initialRating: 1,
// //                             emptyIcon: Icons.star_border,
// //                             size: 20,
// //                             filledIcon: Icons.star,
// //                             emptyColor: Color(0xffF0B51C),
// //                             filledColor: Color(0xffF0B51C),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: Text('10%'),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(4.0),
// //                           child: Text('\$ 6,000'),
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// return Obx(() {
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Header row
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   "Client Insights",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//                 Checkbox(
//                   value: controller.InsightsList.every(
//                       (insight) => insight['isChecked'].value),
//                   onChanged: (bool? value) {
//                     controller.toggleAllInsights(value ?? false);
//                   },
//                 ),
//               ],
//             ),
//           ),

//           // Table headers
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10.0),
//             child: Row(
//               children: const [
//                 Expanded(flex: 2, child: Text("Client Rating")),
//                 Expanded(child: Text("Percentage")),
//                 Expanded(child: Text("Service Value")),
//               ],
//             ),
//           ),
//           const Divider(),

//           // Insights list
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: controller.InsightsList.length,
//             itemBuilder: (context, index) {
//               final insight = controller.InsightsList[index];
//               return Padding(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
//                 child: Row(
//                   children: [
//                     // Rating (stars)
//                     Expanded(
//                       flex: 2,
//                       child: Row(
//                         children: List.generate(5, (starIndex) {
//                           return Icon(
//                             Icons.star,
//                             size: 20,
//                             color: starIndex < insight['rating']
//                                 ? Colors.orange
//                                 : Colors.grey[300],
//                           );
//                         }),
//                       ),
//                     ),

//                     // Percentage
//                     Expanded(
//                       child: Text(
//                         insight['percentage'],
//                         style: const TextStyle(fontSize: 14),
//                       ),
//                     ),

//                     // Service Value
//                     Expanded(
//                       child: Text(
//                         insight['serviceValue'],
//                         style: const TextStyle(fontSize: 14),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       );
//     });