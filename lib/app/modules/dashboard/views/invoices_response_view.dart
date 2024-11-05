import 'package:dashboard/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';

class InvoicesResponseView extends GetView {
  InvoicesResponseView({super.key});
  final DashboardController controller = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 0,
              left: 10,
              right: 10,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xff0095FF), width: 1.0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Invoices:paid vs unpaid vs overdue',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            const BorderSide(width: 1.0, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
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
                              sections: [
                                PieChartSectionData(
                                  value: 1,
                                  title: '',
                                  color: Color.fromARGB(239, 243, 219, 61),
                                  radius: 15,
                                ),
                                PieChartSectionData(
                                  value: 1,
                                  title: '',
                                  color: Color(0xfff3403d),
                                  radius: 15,
                                ),
                                PieChartSectionData(
                                  value: 3,
                                  title: '',
                                  color: Color(0xff0355b8),
                                  radius: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            child: 
                          Text(
                            '5 invoices',
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 12,
                              color: Color(0xff0355b8),
                            ),
                            SizedBox(width: 8),
                            Text('paid 3', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 12,
                              color: Color.fromARGB(239, 243, 219, 61),
                            ),
                            SizedBox(width: 8),
                            Text('unpaid 1', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 12,
                              color: Color(0xfff3403d),
                            ),
                            SizedBox(width: 8),
                            Text('overdue 1', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(
              top: 0,
              bottom: 20,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xff0095FF), width: 1.0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Response time alert summary',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            const BorderSide(width: 1.0, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
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
                              sections: [
                                PieChartSectionData(
                                  value: 62.5,
                                  title: '',
                                  color: Colors.green,
                                  radius: 15,
                                ),
                                PieChartSectionData(
                                  value: 16.5,
                                  title: '',
                                  color: Colors.yellow,
                                  radius: 15,
                                ),
                                PieChartSectionData(
                                  value: 8.25,
                                  title: '',
                                  color: Colors.orange,
                                  radius: 15,
                                ),
                                PieChartSectionData(
                                  value: 8.25,
                                  title: '',
                                  color: const Color.fromARGB(255, 212, 58, 47),
                                  radius: 15,
                                ),
                                PieChartSectionData(
                                  value: 4.5,
                                  title: '',
                                  color: Colors.red,
                                  radius: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          child: Text(
                            '24 Leads',
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 12,
                              color: Colors.green,
                            ),
                            SizedBox(width: 8),
                            Text('< 30 mins', style: TextStyle(fontSize: 8)),
                            SizedBox(width: 40),
                            Text('62.5%',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 12,
                              color: Colors.yellow,
                            ),
                            SizedBox(width: 8),
                            Text('> 30 to 60 mins',
                                style: TextStyle(fontSize: 8)),
                            SizedBox(width: 16),
                            Text('16.5%',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 12,
                              color: Colors.orange,
                            ),
                            SizedBox(width: 8),
                            Text('> 60 to 90 mins',
                                style: TextStyle(fontSize: 8)),
                            SizedBox(width: 20),
                            Text('8.25%',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 12,
                              color: const Color.fromARGB(255, 212, 58, 47),
                            ),
                            SizedBox(width: 8),
                            Text('> 90 to 120 mins',
                                style: TextStyle(fontSize: 8)),
                            SizedBox(width: 16),
                            Text('8.25%',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 12,
                              color: Colors.red,
                            ),
                            SizedBox(width: 8),
                            Text('> 120 mins', style: TextStyle(fontSize: 8)),
                            SizedBox(width: 40),
                            Text('4.50%',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 0,
              bottom: 20,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xff0095FF), width: 1.0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Client Insights',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            const BorderSide(width: 1.0, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(2),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Client Rating',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Percentage',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Service Value',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: RatingBar.readOnly(
                            initialRating: 5,
                            emptyIcon: Icons.star_border,
                            size: 20,
                            filledIcon: Icons.star,
                            emptyColor: Color(0xffF0B51C),
                            filledColor: Color(0xffF0B51C),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('10%'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('\$ 17,000'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: RatingBar.readOnly(
                            initialRating: 4,
                            emptyIcon: Icons.star_border,
                            size: 20,
                            filledIcon: Icons.star,
                            emptyColor: Color(0xffF0B51C),
                            filledColor: Color(0xffF0B51C),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('50%'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('\$ 19,000'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: RatingBar.readOnly(
                            initialRating: 3,
                            emptyIcon: Icons.star_border,
                            size: 20,
                            filledIcon: Icons.star,
                            emptyColor: Color(0xffF0B51C),
                            filledColor: Color(0xffF0B51C),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('20%'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('\$ 20,000'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: RatingBar.readOnly(
                            initialRating: 2,
                            emptyIcon: Icons.star_border,
                            size: 20,
                            filledIcon: Icons.star,
                            emptyColor: Color(0xffF0B51C),
                            filledColor: Color(0xffF0B51C),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('10%'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('\$ 8,000'),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: RatingBar.readOnly(
                            initialRating: 1,
                            emptyIcon: Icons.star_border,
                            size: 20,
                            filledIcon: Icons.star,
                            emptyColor: Color(0xffF0B51C),
                            filledColor: Color(0xffF0B51C),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('10%'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('\$ 6,000'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
