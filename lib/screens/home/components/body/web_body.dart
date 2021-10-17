import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pets_website/constants/constants.dart';

import 'components/icon_container.dart';

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
              child: IconContainerCard(),
            ),

          ],
        ),
      ),
    );
  }
}
