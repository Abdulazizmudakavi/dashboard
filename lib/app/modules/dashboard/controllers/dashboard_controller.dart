import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController {
  var chartList = <Map<String, dynamic>>[].obs;
  // void updateChartData(int index, Map<String, int> newData) {
  //   if (index >= 0 && index < chartList.length) {
  //     chartList[index]['data'] = newData;
  //     chartList.refresh();
  //   }
  // }

  @override
  void onInit() {
    super.onInit();
    // Example data initialization
    chartList.addAll([
      {
        'title': "Leads: Contacted vs Uncontacted",
        'data': {'Contacted': 18, 'Uncontacted': 6},
        'colors': {
          'Contacted': Color(0xff0355b8),
          'Uncontacted': Color(0xfff3403d),
        },
      },
      {
        'title': "Quotes: Accepted vs Not Accepted vs Expired",
        'data': {
          'Accepted': 18,
          'Not Accepted': 8,
          'Expired': 3,
        },
        'colors': {
          'Accepted': Color(0xff0355b8),
          'Not Accepted': Color.fromARGB(239, 243, 219, 61),
          'Expired': Color(0xfff3403d),
        },
      },
      {
        'title': "Quote Visits: Done vs Not Done",
        'data': {
          'Done': 5,
          'Not Done': 4,
        },
        'colors': {
          'Done': Color(0xff0355b8),
          'Not Done': Color(0xfff3403d),
        },
      },
    ]);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment(dynamic count) => count.value++;
}
