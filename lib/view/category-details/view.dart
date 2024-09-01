import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/extentions/string.dart';
import 'package:courses/Core/route_Units/route_units.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:courses/View/filter/view.dart';
import 'package:courses/Widget/app-app-bar.dart';
import 'package:courses/Widget/app/product-card.dart';
import 'package:courses/Widget/app_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryDetails  extends StatelessWidget {
  const CategoryDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:

        AppAppBar(
          title: 'vegetables',
          trailing: IconButton(
            icon:Image.asset(
              'filter'.assetPNG,
              width: 28.width,
              height: 28.height,

            ),
            onPressed: () => RouteUtils.push(context, FilterView()),
            ),

            ),





      body: GridView.builder(
        itemCount: 10,
        padding: EdgeInsets.all(16),

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 2 ,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: ProductCard.aspectRatio)
          , itemBuilder: (context, index){
        return ProductCard();
          })


    );
  }
}
