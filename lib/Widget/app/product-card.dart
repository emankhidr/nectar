import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/extentions/string.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:courses/Widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatelessWidget {

  const ProductCard({super.key});
  static double get height => 260.height;
  static double get width => 188.width;
  static double get aspectRatio => width/height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: REdgeInsets.symmetric(
        horizontal: 16.width,
        vertical: 16.height,
      ),
      child: Column(
        children: [
          Expanded(
              child: Image.asset(
                'pngfuel 11'.assetPNG,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
          ),
          SizedBox(
            height: 4.height,
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(title: 'Banana' ,
              fontWeight: FontWeight.w600,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              )
              ,
              SizedBox(
                height: 4 .height,
              ),
              AppText(title: '1kg , price' ,
               color: AppColors.darkGrey,
                fontSize: 14,
              ),
              Spacer(),
              Row(
                  children: [
                    Expanded(
                      child: AppText(title: '\$4.99' ,
                      fontWeight: FontWeight.w600,
                        fontSize: 18,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.width,
                        vertical: 12.height
                      ),
                      child: Icon(
                        FontAwesomeIcons.plus,
                        size: 20,
                        color: AppColors.white,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(16.reduis),
                      ),
                    )
                  ],
                ),
              


            ],
          ))
        ],

      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lightGrey,

        ),
            borderRadius: BorderRadius.circular(16.reduis),
      ),
    );
  }
}
