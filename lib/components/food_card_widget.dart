import 'package:flutter/material.dart';
import '../constants.dart';

class FoodCardWidget extends StatelessWidget {
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
                  image: AssetImage('assets/images/image_1.png'),
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 80,
            child: Text(
              '\$20',
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
                    'Vegan salad bowl',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'with red tomato',
                    style: TextStyle(
                      color: kTextColor.withOpacity(.4),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Lorem ipsum dolor sitamet, consectetur adipiscing elit. Nullam quis lectus posuere tristique mauris sed ultrices ante sed imperdiet faucibus mi eu consectetur',
                    maxLines: 3,
                    style: TextStyle(
                      color: kTextColor.withOpacity(.65),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '420Kcal',
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
