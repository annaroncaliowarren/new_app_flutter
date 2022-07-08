import 'package:flutter/material.dart';
import 'presenter/home/home_page.dart';
import 'presenter/login/login_page.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Mudando estado',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}


