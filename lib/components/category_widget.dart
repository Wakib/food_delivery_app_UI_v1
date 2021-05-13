import 'package:flutter/material.dart';
import '../constants.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final bool isActive;

  CategoryWidget({this.title, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 5.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button.copyWith(
              color: isActive ? kPrimaryColor : kTextColor.withOpacity(0.4),
            ),
      ),
    );
  }
}
