import 'package:covid19/src/pages/countries_page.dart';
import 'package:covid19/src/pages/statistics_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xff3a4750),
        body: TabBarView(
          children: [
            CountriesPage(),
            StatisticsPage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(FontAwesomeIcons.globeAmericas, size: 30.0),
              text: "Paises",
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.chartBar, size: 30.0),
              text: "Estadísticas",
            ),
          ],
          labelStyle: GoogleFonts.getFont('Montserrat'),
          labelColor: Color(0xff00adb5),
          unselectedLabelColor: Color(0xffeeeeee),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.transparent,
        ),
      ),
    );
  }
}
