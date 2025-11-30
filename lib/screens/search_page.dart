import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final List<String> items = [
    "العنصر الأول",
    "العنصر الثاني",
    "العنصر الثالث",
    "العنصر الرابع",
    "العنصر الخامس",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("صفحة البحث")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(items[i]),
            leading: Icon(Icons.label),
            subtitle: Text("وصف للعنصر"),
          );
        },
      ),
    );
  }
}
