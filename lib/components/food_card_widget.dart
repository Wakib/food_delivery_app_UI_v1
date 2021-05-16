import 'package:flutter/material.dart';
import '../constants.dart';

class FoodCardWidget extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;

  FoodCardWidget(
      {this.title,
      this.ingredient,
      this.image,
      this.price,
      this.calories,
      this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 400,
      width: 270,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 380,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: kPrimaryColor.withOpacity(.08),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor.withOpacity(.15),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: -50,
            child: Container(
              height: 184,
              width: 276,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 80,
            child: Text(
              '\$$price',
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: kPrimaryColor,
                  ),
            ),
          ),
          Positioned(
            top: 200,
            left: 40,
            child: Container(
              width: 210,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'with $ingredient',
                    style: TextStyle(
                      color: kTextColor.withOpacity(.4),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    description,
                    maxLines: 3,
                    style: TextStyle(
                      color: kTextColor.withOpacity(.65),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    calories,
                    style: TextStyle(
                      color: kTextColor.withOpacity(.65),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
