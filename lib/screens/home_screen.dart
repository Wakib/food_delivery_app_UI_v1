import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/category_widget.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Simple way to find \nTasty food',
                style: Theme.of(context).textTheme.headline5,
              ),
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
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
          ),
        ],
      ),
    );
  }
}
