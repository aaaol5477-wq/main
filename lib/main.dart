import 'package:flutter/material.dart';

void main() {
  runApp(TasbeehApp());
}

class TasbeehApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SebhaScreen(),
    );
  }
}

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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
