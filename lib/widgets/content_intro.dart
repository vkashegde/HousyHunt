import 'package:flutter/material.dart';
import 'package:housy_hunt/model/house.dart';

class ContentIntro extends StatelessWidget {
  final House house;

  const ContentIntro({Key key, this.house}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            house.name,
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            house.address,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '50000 sqft',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '\$4455 ',
                      style: Theme.of(context).textTheme.headline1.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextSpan(
                      text: 'Fer Month',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
