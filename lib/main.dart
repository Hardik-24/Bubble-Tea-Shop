import 'package:bubble_tea/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants.
      create: (context) =>
          BubbleTeaShop(), //keep watching this thing(in other words, you are subscribing to the changes of this thing
      builder: (context, child) => const MaterialApp(
        //whenever a change is notified in BubbleTeaShop(), build this app
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
