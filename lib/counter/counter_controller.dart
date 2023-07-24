import 'package:architecture_tutorial/counter/counter_state.dart';
import 'package:architecture_tutorial/service/user_service.dart';
import 'package:flutter/material.dart';
import 'counter_view.dart';

class CounterController extends State<CounterView> {
  //State
  CounterState state = CounterState();

  //Logic
  increment() {
    state = CounterState(
      counter: state.counter + 1,
    );
    setState(() {});
  }

  decrement() {
    state = CounterState(
      counter: state.counter - 1,
    );
    setState(() {});
  }

  getUsers() async {
    var users = await UserService().getUsers();
    state = CounterState(
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
