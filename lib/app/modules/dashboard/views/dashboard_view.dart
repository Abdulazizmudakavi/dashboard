import 'package:dashboard/app/modules/dashboard/views/btn_top_view.dart';
import 'package:dashboard/app/modules/dashboard/views/leads_view.dart';
import 'package:dashboard/app/modules/dashboard/views/money_view.dart';
import 'package:dashboard/app/modules/dashboard/views/quote_booked_view.dart';
import 'package:dashboard/app/modules/dashboard/views/invoices_response_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 24,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.add_circle,
                color: Color(0xff7ed757),
                size: 35,
              ),
              onPressed: () {},
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Color(0xff0055bb),
        toolbarHeight: 70,
        leading: IconButton(
          icon: Icon(
            Icons.grid_view,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              BtnTopView(),
              SizedBox(height: 20),
              MoneyView(),
              SizedBox(height: 20),
              LeadsView(),
              SizedBox(height: 20),
              QuoteBookedView(),
              SizedBox(height: 10),
              InvoicesResponseView(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff0055bb),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: 0,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.telegram, color: Colors.white),
            label: 'Leads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.white),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.white),
            label: 'Invoices',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.white),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}