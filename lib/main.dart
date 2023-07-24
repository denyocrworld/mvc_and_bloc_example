import 'package:architecture_tutorial/home/home_view.dart';
import 'package:flutter/material.dart';

/*
BluePrint Rumah
Tukang
Alat Tukang (Paku, Palu, dll)

Architecture                v
Programmer                  v
Utillity (State Management, DIO, dll)


Tips: Bagaimana membuat Aplikasi yang tetap menerapkan Architecture,
Dan hanya menggunakan State Management bawaan Flutter

Provider
Bloc
Getx
Riverpod

Skala Kecil / Skala Besar
=> Hanya utk mempermudah state management

MVC Architecture
  UI      View              Form            LoginView
  Logic   Controller        OnButtonClick   LoginController
  State                                     LoginState
  Service                                   LoginService        HTTP Request | LocalStorage
MVVM Architecture
BLOC Architecture
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
