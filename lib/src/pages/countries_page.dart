import 'package:covid19/src/models/country.dart';
import 'package:covid19/src/providers/covid_provider.dart';
import 'package:covid19/src/widgets/country_item.dart';
import 'package:covid19/src/widgets/order_floating_button.dart';
import 'package:covid19/src/widgets/principal_title.dart';
import 'package:covid19/src/widgets/update_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CountriesPage extends StatefulWidget {
  @override
  _CountriesPageState createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  CovidProvider _covidProvider;

  @override
  Widget build(BuildContext context) {
    _covidProvider = Provider.of<CovidProvider>(context);

    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PrincipalTitle(title: "Resumen"),
          SizedBox(height: 14.0),
          UpdateButton(),
          SizedBox(height: 14.0),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0),
              itemCount: _covidProvider.countries.length,
              itemBuilder: (BuildContext context, int index) {
                List<Country> countries = _covidProvider.countries;

                return CountryItem(country: countries[index]);
              },
            ),
          ),
        ],
      )),
      floatingActionButton: OrderFloatingButton(),
    );
  }
}
