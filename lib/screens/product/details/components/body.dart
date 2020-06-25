import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_furniture/constants.dart';
import 'package:flutter_app_furniture/models/product.dart';
import 'package:flutter_app_furniture/screens/product/details/components/chat_and_add_to_cart.dart';
import 'package:flutter_app_furniture/screens/product/details/components/color_dot.dart';
import 'package:flutter_app_furniture/screens/product/details/components/list_of_colors.dart';
import 'package:flutter_app_furniture/screens/product/details/components/product_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body1 extends StatelessWidget {
  final Product product;

  const Body1({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//          height: 200,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  Center(
                    child: Hero(
                      tag: "${product.id}",
                      child: ProductPoster(
                        size: size,
                        image: product.image,
                      ),
                    ),
                  ),

                  ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                    child: Text(
                      product.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline ,
                    ),
                  ),
                  Text(
                      "\$${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight:FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: kDefaultPadding/2,
                      ),
                    child: Text(
                        product.description,
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding,),
                ],
              ),
            ),
            ChatAndAddToCart()
          ],
        ),
      ),
    );
  }
}

