import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

class PaymentBody extends StatelessWidget {
  static var routeName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        SizedBox(height: SizeConfig.screenHeight * 0.04),
          Align( 
              alignment: Alignment.bottomCenter,
              child:Image.asset(
          "assets/images/paysucess.png",
          height: SizeConfig.screenHeight * 0.4, //40%
          )),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Payment Success",textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),

        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "We will contact you shortly",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
