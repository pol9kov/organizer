import 'package:flutter/material.dart';
import 'package:organizer/pages/filter.dart';
import 'package:organizer/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      Filters.routeName: (BuildContext context) => new Filters(),
    };

    return MaterialApp(
      title: 'Organizer',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          ),
        ),

        floatingActionButtonTheme:
            Theme.of(context).floatingActionButtonTheme.copyWith(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          headline5: TextStyle(fontSize: 20.0),
          headline6: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: MyHomePage(title: 'Вечеринки'),
      routes: routes,
    );
  }
}
