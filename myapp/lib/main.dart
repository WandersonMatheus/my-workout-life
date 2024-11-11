import 'package:flutter/material.dart';
import 'package:myapp/pages/login-page.dart';

void main() => runApp(const MyApp());

// Suggested code may be subject to a license. Learn more: ~LicenseLog:873418039.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:846937038.
class MyApp extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1392513370.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3038062480.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2174821273.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:840499863.
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
