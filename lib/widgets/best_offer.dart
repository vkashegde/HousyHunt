import 'package:flutter/material.dart';
import 'package:housy_hunt/model/house.dart';
import 'package:housy_hunt/widgets/circular_icon_button.dart';

class BestOffer extends StatelessWidget {
  final listOffer = House.generateBestOffer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Offer',
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'See All',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ...listOffer
              .map(
                (el) => Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(el.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(el.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1
                                      .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 8,
                              ),
                              Text(el.address,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold))
                            ],
                          )
                        ],
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: CircularIconButton(
                            iconUrl: 'assets/icons/heart.svg',
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
