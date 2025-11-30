import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الإعدادات")),
      body: Center(
        child: Text(
          "صفحة الإعدادات",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
