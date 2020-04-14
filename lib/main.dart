import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:covid19/src/pages/tabs_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.red,
      ),
      home: TabsPage(),
    );
  }
}
