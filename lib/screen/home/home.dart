import 'package:flutter/material.dart';
import 'package:housy_hunt/widgets/best_offer.dart';
import 'package:housy_hunt/widgets/categories.dart';
import 'package:housy_hunt/widgets/custom_appbar.dart';
import 'package:housy_hunt/widgets/custom_bottom_navigation_bar.dart';
import 'package:housy_hunt/widgets/recommended_house.dart';
import 'package:housy_hunt/widgets/search_input.dart';
import 'package:housy_hunt/widgets/welcome_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeText(),
          SearchInput(),
          Categories(),
          RecommendedHouse(),
          BestOffer(),
        ],
      )),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
