import 'package:flutter/material.dart';

void main() {
  runApp(CVApp());
}

class CVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("CV"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.purple.shade100,
            ),
            Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Amr ahmed Ishrem",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "student",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Email"),
                  Text("example@gmail.com"),
                ],
              ),
            ),
            Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Phone"),
                  Text("77777777"),
                ],
              ),
            ),
            Divider(thickness: 1),
            SizedBox(height: 10),
            Text("Skills", style: TextStyle(fontSize: 20)),
            Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1- Flutter Development"),
                  SizedBox(height: 8),
                  Text("2- UI/UX Design"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
