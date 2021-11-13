import 'package:flutter/material.dart';
import 'package:housy_hunt/model/house.dart';
import 'package:housy_hunt/screen/detail/detail.dart';
import 'package:housy_hunt/widgets/circular_icon_button.dart';

class RecommendedHouse extends StatelessWidget {
  final recommendedList = House.generateRecommended();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        height: 340,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Detail(
                    house: recommendedList[index],
                  ),
                ),
              );
            },
            child: Container(
              height: 300,
              width: 230,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(recommendedList[index].imageUrl),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: CircularIconButton(
                      iconUrl: 'assets/icons/mark.svg',
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.white54,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                recommendedList[index].name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1
                                    .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                recommendedList[index].address,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          CircularIconButton(
                            iconUrl: 'assets/icons/mark.svg',
                            color: Theme.of(context).accentColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          separatorBuilder: (_, index) => SizedBox(
            width: 20,
          ),
          itemCount: recommendedList.length,
        ));
  }
}
