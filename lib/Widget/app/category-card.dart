import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/extentions/string.dart';
import 'package:courses/Core/route_Units/route_units.dart';
import 'package:courses/View/category-details/view.dart';
import 'package:courses/Widget/app_text.dart';
import 'package:flutter/material.dart';

import '../../Core/utils/colors.dart';

class CategoryCard  extends StatelessWidget {
  const CategoryCard ({super.key});

  static double get height => 224.height;
  static double get width => 188.width;
  static double get aspectRatio => width/height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => RouteUtils.push(context, CategoryDetails()),
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
          horizontal: 32.width,

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset(
                'vegetables'.assetPNG ,
               height: 100.height,

               fit: BoxFit.cover,

              ),

             SizedBox(
               height: 16.height,
             ),
             Center(child: AppText(title: ' fresh fruits & Vegetable '
                , fontWeight: FontWeight.w600,
                fontSize: 16,
                maxLines: 2,
             textAlign: TextAlign.center,))
          ],
        ),
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(16.reduis),
          color: AppColors.primary.withOpacity(.1),
          border: Border.all(color: AppColors.primary),
        ),
      ),
    );
  }
}
