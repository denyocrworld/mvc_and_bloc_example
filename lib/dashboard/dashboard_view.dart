// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:architecture_tutorial/dashboard/dashborad_event.dart';
import 'package:flutter/material.dart';

import 'dashboard_bloc.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => DashboardBloc();

  Widget build(
    BuildContext context,
    DashboardBloc bloc,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Counter: ${bloc.state.counter}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Users: ${bloc.state.users.length}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              // onPressed: () => bloc.increment(),
              onPressed: () => bloc.add(DashboardIncrementEvent()),
              child: const Text("Increment"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            ElevatedButton(
              onPressed: () => bloc.add(DashboardDecrementEvent()),
              child: const Text("Decrement"),
            ),
            const SizedBox(
              height: 12.0,
            ),
          ],
        ),
      ),
    );
  }
}
