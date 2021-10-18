import 'package:flutter/material.dart';
import 'package:pets_website/constants/constants.dart';

class IconContainerCard extends StatelessWidget {
  const IconContainerCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        IconContainer(
          icon: Icons.delivery_dining,
          title: 'free shipping \nfrom CHF50',
          press: () {},
        ),
        IconContainer(
          icon: Icons.favorite_outline,
          title: '99% positive \nfeedback',
          press: () {},
        ),
        IconContainer(
          icon: Icons.wallet_membership_outlined,
          title: 'Easy online \npurchase',
          press: () {},
        ),
        IconContainer(
          icon: Icons.card_travel_outlined,
          title: 'Purchase \nwith postCard',
          press: () {},
        ),
        IconContainer(
          icon: Icons.check_box_outlined,
          title: 'Huge \nrange',
          press: () {},
        ),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  const IconContainer({
    Key key,
    this.icon,
    this.title,
    this.press,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2,vertical: kDefaultPadding),
      child: InkWell(
        onTap: press,
        child: Container(
          child: Wrap(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                child: Icon(icon),
                decoration:
                    BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(height: 1.5, color: kButtonColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
