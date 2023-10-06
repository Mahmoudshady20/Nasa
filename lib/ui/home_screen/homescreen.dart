import 'package:flutter/material.dart';
import 'package:nasa/component/custom_button.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homescreen';

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.png'),
            fit: BoxFit.fill,
          )
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(icon: Icons.play_arrow, title: 'Play', voidCallBack: (){

            }),
            CustomButton(icon: Icons.star, title: 'Events', voidCallBack: (){

            }),
            CustomButton(icon: Icons.logout, title: 'Quit', voidCallBack: (){

            }),
          ],
        ),
    );
    },);
  }
}
