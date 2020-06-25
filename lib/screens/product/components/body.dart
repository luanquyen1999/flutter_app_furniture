import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_furniture/components/category_list.dart';
import 'package:flutter_app_furniture/components/search_box.dart';
import 'package:flutter_app_furniture/constants.dart';
import 'package:flutter_app_furniture/models/product.dart';
import 'package:flutter_app_furniture/screens/product/components/product_card.dart';
import 'package:flutter_app_furniture/screens/product/details/details_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children:<Widget>[
          SearchBox(
            onChanged: (value){},
          ),
          Categorylist(),
          SizedBox(height: kDefaultPadding/2),
          Expanded(
              child: Stack(
                children:<Widget>[
                  //our background
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(40),
                         topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                  ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index)=>ProductCard(
                      itemIndex: index,
                      product: products[index],
                      press: (){
                        Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context)=>DetailsScreen(product: products[index],),
                        ),
                        );
                      },
                    ),
                  ),
                ],
              ),
          ),
        ],
   ),
    );
  }
}

