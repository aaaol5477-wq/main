import 'package:flutter/material.dart';
import 'second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الصفحة الرئيسية')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // الحقل الأول
            TextField(
              controller: _controller1,
              decoration: const InputDecoration(
                labelText: 'أدخل النص هنا',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // الحقل الثاني
            TextField(
              controller: _controller2,
              decoration: const InputDecoration(
                labelText: 'النص المُنسوخ',
                border: OutlineInputBorder(),
              ),
              readOnly: true,
            ),
            const SizedBox(height: 30),

            // زر نسخ النص إلى الحقل الثاني
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _controller2.text = _controller1.text;
                });
              },
              child: const Text('نسخ النص إلى الحقل الثاني'),
            ),
            const SizedBox(height: 20),

            // زر الانتقال إلى الصفحة الثانية مع تمرير النص
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(text: _controller1.text),
                  ),
                );
              },
              child: const Text('الانتقال إلى صفحة أخرى'),
            ),
          ],
        ),
      ),
    );
  }
}