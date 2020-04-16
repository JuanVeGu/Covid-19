import 'package:covid19/src/models/global.dart';
import 'package:covid19/src/providers/covid_provider.dart';
import 'package:covid19/src/widgets/deaths_card.dart';
import 'package:covid19/src/widgets/infections_card.dart';
import 'package:covid19/src/widgets/last_update.dart';
import 'package:covid19/src/widgets/principal_title.dart';
import 'package:covid19/src/widgets/recovery_card.dart';
import 'package:covid19/src/widgets/update_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatisticsPage extends StatelessWidget {
  Global _global;

  @override
  Widget build(BuildContext context) {
    _global = Provider.of<CovidProvider>(context).global;

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff303841),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PrincipalTitle(title: "Actualización Mundial"),
            SizedBox(height: size.height * 0.03),
            UpdateButton(),
            SizedBox(height: size.height * 0.03),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InfectionsCard(global: _global),
                    DeathsCard(global: _global),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RecoveryCard(global: _global),
                  ],
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            LastUpdate(
              lastUpdate: Provider.of<CovidProvider>(context).summary.date,
            ),
          ],
        ),
      ),
    );
  }
}
