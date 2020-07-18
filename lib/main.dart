import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual_pro/screens/base/base_screen.dart';

void main() async {
  runApp(MyApp());

  Firestore.instance.collection('boletos').snapshots().listen((snapshot) {
    for (DocumentSnapshot document in snapshot.documents) {
      print(document.data);
    }
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kyss New York',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 156, 27, 49),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BaseScreen());
  }
}
