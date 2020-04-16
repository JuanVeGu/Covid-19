import 'package:covid19/src/pages/countries_page.dart';
import 'package:covid19/src/pages/statistics_page.dart';
import 'package:covid19/src/providers/covid_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TabsPage extends StatelessWidget {
  CovidProvider _covidProvider;
  @override
  Widget build(BuildContext context) {
    _covidProvider = Provider.of<CovidProvider>(context);
    final size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xff3a4750),
        body: _covidProvider.loading
            ? Center(
                child: Text(
                  "Cargando...",
                  style: TextStyle(
                    fontSize: size.width * 0.06,
                    color: Color(0xffeeeeee),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : TabBarView(
                children: [
                  CountriesPage(),
                  StatisticsPage(),
                ],
              ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(
                FontAwesomeIcons.globeAmericas,
                size: size.width * 0.065,
              ),
              text: "Paises",
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.chartBar,
                size: size.width * 0.065,
              ),
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
