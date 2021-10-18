import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({Key key, this.mobile, this.desktop}) : super(key: key);
  final Widget mobile;
  final Widget desktop;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains){
      if(constrains.maxWidth < 460){
        return mobile;
      }else{
        return desktop;
      }
    });
  }
}
