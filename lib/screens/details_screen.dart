import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_v1/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'assets/icons/backward.svg',
                    height: 11,
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 12,
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.all(5),
                height: 305,
                width: 305,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image_1_big.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // title,
                  'Vegan salad blow',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  //'\$$price',
                  '\$20',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: kPrimaryColor,
                      ),
                ),
              ],
            ),
            Text(
              // 'with $ingredient',
              'with red tomato',
              style: TextStyle(
                color: kTextColor.withOpacity(.4),
              ),
            ),
            SizedBox(height: 15),
            Text(
              // description,
              'Lorem ipsum dolor sitamet, consec adipiscing elit. Nullam quis lectus posuere tristique mauris sed ultrices ante sed imperdiet faucibus mi eu consectetur. Orci varius natoque penatibus et magnis parturient montes, nascetur ridiculus mus. Praesent aliqud justo. Cras rutrum mauris sit amet odio feugiat, et euismod elit lobortis. Aliquam sodales enim est, id luctus aliquet non. In libero eros, tempor ut diam ac, ornare euismod sem.',
              maxLines: 8,
              style: TextStyle(
                color: kTextColor.withOpacity(.65),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kPrimaryColor.withOpacity(.15),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Add to bag',
                        style: Theme.of(context).textTheme.button,
                      ),
                      SizedBox(width: 40),
                      SvgPicture.asset(
                        'assets/icons/forward.svg',
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(.25),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor,
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/bag.svg',
                          // height: 10,
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 12,
                        child: Container(
                          alignment: Alignment.center,
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Text(
                            '0',
                            style: Theme.of(context)
                                .textTheme
                                .button
                                .copyWith(color: kPrimaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
