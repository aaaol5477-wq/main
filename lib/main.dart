import 'package:flutter/material.dart';

void main() {
<<<<<<< HEAD
  runApp(TasbeehApp());
}

class TasbeehApp extends StatelessWidget {
=======
  runApp(CVApp());
}

class CVApp extends StatelessWidget {
>>>>>>> 7c4d3a53b642750083e1e0d98799e2c4affa6949
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: SebhaScreen(),
=======
      home: CVPage(),
>>>>>>> 7c4d3a53b642750083e1e0d98799e2c4affa6949
    );
  }
}

<<<<<<< HEAD
class SebhaScreen extends StatefulWidget {
  @override
  _SebhaScreenState createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int sbhanAllah = 0;
  int alhamdulillah = 0;
  int allahuAkbar = 0;

  int get total => sbhanAllah + alhamdulillah + allahuAkbar;

  void resetAll() {
    setState(() {
      sbhanAllah = 0;
      alhamdulillah = 0;
      allahuAkbar = 0;
    });
  }

  Widget tasbeehRow(String text, int count, Function increase, Color color, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: color),
              onPressed: () => increase(),
              child: Text("++"),
            ),
            Column(
              children: [
                Text(text, style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Text("العدد: $count"),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: Icon(icon, color: color),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("السبحة"),
        backgroundColor: Colors.teal,
=======
class CVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("CV"),
        backgroundColor: Colors.blue,
>>>>>>> 7c4d3a53b642750083e1e0d98799e2c4affa6949
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
<<<<<<< HEAD
            Card(
              margin: EdgeInsets.all(12),
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: resetAll,
                      icon: Icon(Icons.refresh),
                      label: Text("تصفير"),
                    ),
                    Expanded(
                      child: Text(
                        "تسبيح وحساب تلقائي\nاضغط على زر + لكل عبارة لزيادة العدد.",
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
            ),

            tasbeehRow("سبحان الله", sbhanAllah, () {
              setState(() => sbhanAllah++);
            }, Colors.teal, Icons.bubble_chart),

            tasbeehRow("الحمد لله", alhamdulillah, () {
              setState(() => alhamdulillah++);
            }, Colors.deepOrange, Icons.favorite),

            tasbeehRow("الله أكبر", allahuAkbar, () {
              setState(() => allahuAkbar++);
            }, Colors.indigo, Icons.star),

            SizedBox(height: 20),
            Text("المجموع: $total", style: TextStyle(fontSize: 22)),
            SizedBox(height: 40),
=======
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
>>>>>>> 7c4d3a53b642750083e1e0d98799e2c4affa6949
          ],
        ),
      ),
    );
  }
}
