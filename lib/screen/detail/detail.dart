import 'package:flutter/material.dart';
import 'package:housy_hunt/model/house.dart';
import 'package:housy_hunt/widgets/about.dart';
import 'package:housy_hunt/widgets/content_intro.dart';
import 'package:housy_hunt/widgets/detail_app_bar.dart';
import 'package:housy_hunt/widgets/house_info.dart';

class Detail extends StatelessWidget {
  final House house;

  const Detail({Key key, this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(house: house),
            SizedBox(height: 25),
            ContentIntro(house: house),
            SizedBox(height: 25),
            HouseInfo(),
            SizedBox(height: 25),
            About(),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
