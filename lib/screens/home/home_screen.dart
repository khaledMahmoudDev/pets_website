import 'package:flutter/material.dart';
import 'package:pets_website/constants/constants.dart';
import 'package:pets_website/screens/home/components/icon_card.dart';
import 'package:pets_website/screens/home/components/web_menu.dart';

import 'components/browser_button.dart';
import 'components/search_bar.dart';
import 'components/web_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          WebHeader(),
        ],
      ),
    );
  }
}
