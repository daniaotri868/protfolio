import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:untitled/sign_up.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = MaterialTheme(const TextTheme()).light();

    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(breakpoints: [
        const Breakpoint(start: 0, end: 450, name: MOBILE),
        const Breakpoint(start: 451, end: 800, name: TABLET),
        const Breakpoint(start: 801, end: 1920, name: DESKTOP),
        const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ], breakpointsLandscape: [
        const Breakpoint(start: 0, end: 480, name: 'MOBILE'),
        const Breakpoint(start: 481, end: 1200, name: 'TABLET'),
        const Breakpoint(start: 1201, end: double.infinity, name: 'DESKTOP'),
      ], child: child!),
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUp(),
    );
  }
}