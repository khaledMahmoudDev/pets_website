import 'package:flutter/material.dart';
import 'package:pets_website/constants/constants.dart';
import 'package:pets_website/model/responsive.dart';
import 'package:pets_website/screens/home/components/search_bar.dart';
import 'package:pets_website/screens/home/components/web_menu.dart';

import '../browser_button.dart';
import '../icon_card.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kPrimaryColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'PETIAN',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      WebMenu(),
                      Spacer(),
                      IconCard(),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  searchBar(),
                  SizedBox(
                    height: 50,
                  ),
                  ResponsiveWidget(
                    mobile: Column(
                      children: [
                        Text(
                          'High quality \nproducts for \nyour pets',
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/dog banner.png',
                          height: 260,
                          width: 260,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 20,),
                        BrowserButton()
                      ],
                    ),
                    desktop:Container(),
                  ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
