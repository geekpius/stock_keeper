import 'package:flutter/material.dart';
import 'package:stock_keeper/route_generator.dart';
import 'package:stock_keeper/screens/loading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.deepOrangeAccent,
          scaffoldBackgroundColor: Colors.white
      ),
      initialRoute: LoadingScreen.nameRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
