import 'package:flutter/material.dart';
import 'package:loja_virtual_pro/models/user_manager.dart';
import 'package:loja_virtual_pro/screens/base/base_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserManager(),
      child: MaterialApp(
          title: 'Kyss New York',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: const Color.fromARGB(255, 156, 27, 49),
              visualDensity: VisualDensity.adaptivePlatformDensity,
              scaffoldBackgroundColor: const Color.fromARGB(255, 156, 27, 49),
              appBarTheme: const AppBarTheme(elevation: 0)),
          home: BaseScreen()),
    );
  }
}
