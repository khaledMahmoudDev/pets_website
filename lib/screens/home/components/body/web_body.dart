import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_website/constants/constants.dart';
import 'package:pets_website/model/model.dart';

import 'components/icon_container.dart';
import 'components/post_section.dart';

class WebBody extends StatelessWidget {
  const WebBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  IconContainerCard(),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Products",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: kPrimaryColor.withOpacity(.5),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Text(
                            "New Products",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: kButtonColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  Wrap(
                    spacing: kDefaultPadding,
                    children: List.generate(
                      products.length,
                      (index) => PostSection(
                        product: products[index],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/care.png',
                          height: 300,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'Care & hygiene dogs',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w900),
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: MaterialButton(
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                            color: Colors.blue,
                            onPressed: () {},
                            child: Text(
                              'Browse Products',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
