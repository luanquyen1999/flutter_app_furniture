import 'package:flutter/material.dart';
import 'package:flutter_app_furniture/constants.dart';
import 'package:flutter_app_furniture/screens/product/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("Dashboard"),
      centerTitle: false,
      actions:<Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/notification.svg"),
            onPressed: (){},
        ),
      ],
    );
  }
}
