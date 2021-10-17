import 'package:flutter/material.dart';
import 'package:pets_website/constants/constants.dart';

class BrowserButton extends StatelessWidget {
  const BrowserButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: kButtonColor,
      onPressed: () {},
      child: Text(
        'Browse Products',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
