import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var dropdownOptions = [
    'Today',
    'This Week',
    'This Month',
    'This Year',
    'Custom Date',
    'Clear',
  ];
  var selectedOption = 'This Week'.obs;
  var chartList = <Map<String, dynamic>>[].obs;
  var moneyList = <Map<String, dynamic>>[].obs;
  var responseList = <Map<String, dynamic>>[].obs;
  var insightsList = <Map<String, dynamic>>[].obs;

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
          'Contacted': const Color(0xff0355b8),
          'Uncontacted': const Color(0xfff3403d),
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
          'Accepted': const Color(0xff0355b8),
          'Not Accepted': const Color.fromARGB(239, 243, 219, 61),
          'Expired': const Color(0xfff3403d),
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
          'Booked Jobs': const Color.fromARGB(239, 243, 219, 61),
          'Quote Visits': const Color.fromARGB(255, 106, 180, 240),
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
          'Done': const Color(0xff0355b8),
          'Not Done': const Color(0xfff3403d),
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
          'Paid': const Color(0xff0355b8),
          'Unpaid': const Color.fromARGB(239, 243, 219, 61),
          'Overdue': const Color(0xfff3403d),
        },
        'isChecked': false.obs,
      },
    ]);

    responseList.add({
      'title': "Response Time Alert Summary",
      'data': {
        '< 30 Mins': 62.50,
        '> 30 to 60 mins': 16.50,
        '> 60 to 90 mins': 8.25,
        '> 90 to 120 mins': 8.25,
        '> 120 mins': 4.50,
      },
      'colors': {
        '< 30 Mins': Colors.green,
        '> 30 to 60 mins': Colors.yellow,
        '> 60 to 90 mins': Colors.orange,
        '> 90 to 120 mins': const Color.fromARGB(255, 212, 58, 47),
        '> 120 mins': Colors.red,
      },
      'isChecked': false.obs,
    });

    insightsList.addAll([
      {
        'clientRating': 5,
        'percentage': 10.0,
        'serviceValue': '\$17,000',
        'isChecked': false.obs,
      },
      {
        'clientRating': 4,
        'percentage': 50.0,
        'serviceValue': '\$90,000',
        'isChecked': false.obs,
      },
      {
        'clientRating': 3,
        'percentage': 20.0,
        'serviceValue': '\$20,000',
        'isChecked': false.obs,
      },
      {
        'clientRating': 2,
        'percentage': 10.0,
        'serviceValue': '\$8,000',
        'isChecked': false.obs,
      },
      {
        'clientRating': 1,
        'percentage': 10.0,
        'serviceValue': '\$6,000',
        'isChecked': false.obs,
      },
    ]);
  }

 
  void toggleMoneyCheckbox(int index) {
    bool currentValue = moneyList[index]['isChecked'].value;
    moneyList[index]['isChecked'].value = !currentValue;

    if (moneyList[index]['isChecked'].value) {
      for (int i = 0; i < moneyList.length; i++) {
        if (i != index) {
          moneyList[i]['isChecked'].value = false;
        }
      }
    }
  }

  
  void toggleChartCheckbox(int index) {
    if (index >= 0 && index < chartList.length) {
      chartList[index]['isChecked'].value =
          !chartList[index]['isChecked'].value;
    }
  }

 
  void toggleResponseCheckbox(int index) {
    if (index >= 0 && index < responseList.length) {
      responseList[index]['isChecked'].value =
          !responseList[index]['isChecked'].value;
    }
  }

 
  void toggleInsightsCheckbox(int index) {
    if (index >= 0 && index < insightsList.length) {
      insightsList[index]['isChecked'].value =
          !insightsList[index]['isChecked'].value;
    }
  }

  
  void addClientRating(int rating, double percentage, String serviceValue) {
    insightsList.add({
      'clientRating': rating,
      'percentage': percentage,
      'serviceValue': serviceValue,
      'isChecked': false.obs,
    });
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
}
