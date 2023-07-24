import 'package:architecture_tutorial/dashboard/dashborad_event.dart';
import 'package:architecture_tutorial/service/user_service.dart';
import 'package:flutter/material.dart';
import 'dashboard_state.dart';
import 'dashboard_view.dart';

class DashboardBloc extends State<DashboardView> {
  //State
  DashboardState state = DashboardState();

  add(DashboardEvent event) {
    onEvent(event);
  }

  onEvent(DashboardEvent event) {
    if (event is DashboardIncrementEvent) {
      increment();
    }
    if (event is DashboardDecrementEvent) {
      decrement();
    }
  }

  //Logic
  increment() {
    state = DashboardState(
      counter: state.counter + 1,
    );
    setState(() {});
  }

  decrement() {
    state = DashboardState(
      counter: state.counter - 1,
    );
    setState(() {});
  }

  getUsers() async {
    var users = await UserService().getUsers();
    state = DashboardState(
      counter: state.counter,
      users: users,
    );
    setState(() {});
  }

  //View
  @override
  Widget build(BuildContext context) {
    return widget.build(context, this);
  }
}
