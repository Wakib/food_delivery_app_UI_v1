import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/category_widget.dart';
import '../constants.dart';
import '../components/food_card_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.25),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset('assets/icons/plus.svg'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.0, top: 50.0),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 14,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text(
              'Simple way to find \nTasty food',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryWidget(title: 'All', isActive: true),
                CategoryWidget(title: 'Asian'),
                CategoryWidget(title: 'Italian'),
                CategoryWidget(title: 'Chinese'),
                CategoryWidget(title: 'Korean'),
                CategoryWidget(title: 'Burgers'),
                CategoryWidget(title: 'Pizza'),
                SizedBox(width: 15.0),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCardWidget(
                  title: 'Vegan salad bowl',
                  ingredient: 'red tomato',
                  image: 'assets/images/image_1.png',
                  price: 20,
                  calories: '420Kcal',
                  description:
                      'Lorem ipsum dolor sitamet, consectetur adipiscing elit. Nullam quis lectus posuere tristique mauris sed ultrices ante sed imperdiet faucibus mi eu consectetur',
                ),
                FoodCardWidget(
                  title: 'Salad vegan bowl',
                  ingredient: 'red tomato',
                  image: 'assets/images/image_2.png',
                  price: 20,
                  calories: '380Kcal',
                  description:
                      'Lorem ipsum dolor sitamet, consectetur adipiscing elit. Nullam quis lectus posuere tristique mauris sed ultrices ante sed imperdiet faucibus mi eu consectetur',
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
