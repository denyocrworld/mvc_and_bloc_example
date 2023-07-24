// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:architecture_tutorial/counter/counter_view.dart';
import 'package:architecture_tutorial/dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterView()),
                ),
                child: const Text("CounterView"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardView()),
                ),
                child: const Text("DashboardView"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
