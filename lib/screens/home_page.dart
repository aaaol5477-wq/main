import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الصفحة الرئيسية")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: text1,
              decoration: InputDecoration(labelText: "الحقل الأول"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: text2,
              decoration: InputDecoration(labelText: "الحقل الثاني"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text2.text = text1.text;
                });
              },
              child: Text("طباعة في الحقل الثاني"),
            ),
          ],
        ),
      ),
    );
  }
}
