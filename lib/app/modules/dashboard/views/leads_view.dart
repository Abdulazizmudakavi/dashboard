import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';

class LeadsView extends GetView {
  const LeadsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
     
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
                      'Leads : Contacted vs Uncontacted ',
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
                                  value: 6,
                                  title: '',
                                  color: Color(0xfff3403d),
                                  radius: 15,
                                ),
                                PieChartSectionData(
                                  value: 18,
                                  title: '',
                                  color: Color(0xff0355b8),
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
                              color: Color(0xff0355b8),
                            ),
                            SizedBox(width: 8),
                            Text('Contacted 18', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              width: 4,
                              height: 12,
                              color: Color(0xfff3403d),
                            ),
                            SizedBox(width: 8),
                            Text('Not Contacted 6', style: TextStyle(fontSize: 12)),
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
                      'Quotes: Accepted vs Not Accepted vs Expired',
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
                                  value: 8,
                                  title: '',
                                  color: Color.fromARGB(239, 243, 219, 61),
                                  radius: 15,
                                ),
                                PieChartSectionData(
                                  value: 18,
                                  title: '',
                                  color: Color(0xff0355b8),
                                  radius: 15,
                                ),
                                  PieChartSectionData(
                                  value: 3,
                                  title: '',
                                 color: Color(0xfff3403d),
                                  radius: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          child: Text(
                            '29 Quotes',
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
                            Text('Accepted 18', style: TextStyle(fontSize: 12)),
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
                            Text('Not Accepted 8', style: TextStyle(fontSize: 12)),
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
                            Text('Expired 3', style: TextStyle(fontSize: 12)),
                          ],
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