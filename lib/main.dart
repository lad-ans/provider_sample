import 'package:flutter/material.dart';
import 'package:hello_world/bible_controller.dart';
import 'package:hello_world/bible_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BibleController>.value(
          value: BibleController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.orangeAccent,
        ),
        home: BibleScreen(),
      ),
    );
  }
}
