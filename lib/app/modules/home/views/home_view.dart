import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
          title: const Text(
            'Home View',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff0055bb)),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/dashboard');
          },
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: Color(0xff0055bb), width: 1),
            backgroundColor: Colors.white,
          ),
          child: Text(
            'Dashbaord',
            style: TextStyle(fontSize: 20, color: Color(0xff0055bb)),
          ),
        ),
      ),
    );
  }
}