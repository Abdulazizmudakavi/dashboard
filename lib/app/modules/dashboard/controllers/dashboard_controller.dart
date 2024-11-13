import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController {
  var chartList = <Map<String, dynamic>>[].obs;
  var moneyList = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    moneyList.addAll([
      {
        'title': "Money In",
        'amount': 2450,
        'description': '(Invoices marked paid)',
        'isChecked': false.obs,
      },
      {
        'title': "Money Out",
        'amount': 200,
        'description': '(Purchases/Expenses made)',
        'isChecked': false.obs,
      },
    ]);
    chartList.addAll([
      {
        'title': "Leads: Contacted vs Uncontacted",
        'data': {'Contacted': 18, 'Uncontacted': 6},
        'colors': {
          'Contacted': Color(0xff0355b8),
          'Uncontacted': Color(0xfff3403d),
        },
        'isChecked': false.obs,
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
        'isChecked': false.obs,
      },
      {
        'title': "Total Jobs: Booked Jobs vs Quote Visits",
        'data': {
          'Booked Jobs': 9,
          'Quote Visits': 9,
        },
        'colors': {
          'Booked Jobs': Color.fromARGB(239, 243, 219, 61),
          'Quote Visits': Color.fromARGB(255, 106, 180, 240),
        },
        'isChecked': false.obs,
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
        'isChecked': false.obs,
      },
      {
        'title': "Invoices: Paid vs Unpaid vs Overdue",
        'data': {
          'Paid': 3,
          'Unpaid': 1,
          'Overdue': 1,
        },
        'colors': {
          'Paid': Color(0xff0355b8),
          'Unpaid':Color.fromARGB(239, 243, 219, 61),
          'Overdue':Color(0xfff3403d),
        },
        'isChecked': false.obs,
      },
    ]);
  }

  void updateChartData(int index, String key, int value) {
    if (index >= 0 && index < chartList.length) {
      final chartData = chartList[index];
      final data = Map<String, int>.from(chartData['data']);
      data[key] = value;
      chartList[index]['data'] = data;
      chartList.refresh();
    }
  }

  void addNewChart(
      String title, Map<String, int> data, Map<String, Color> colors) {
    chartList.add({
      'title': title,
      'data': data,
      'colors': colors,
      'isChecked': false.obs,
    });
  }

  void toggleCheckbox(int index) {
    if (index >= 0 && index < chartList.length) {
      chartList[index]['isChecked'].value =
          !chartList[index]['isChecked'].value;
    }
  }
}
