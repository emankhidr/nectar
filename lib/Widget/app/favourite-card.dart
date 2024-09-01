import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/extentions/string.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:flutter/material.dart';


import '../app_text.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'juice'.assetPNG,
          width: 80.width,
          height: 80.height,
        ),

        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: AppText(title: 'Apple & graph juice ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,),
                  ),
                  SizedBox(
                    height: 2.height,
                  ),
                  AppText(title: '\$ 15.50', fontWeight: FontWeight.w600,),
                  Image.asset('back-arrow'.assetPNG , ),
          
          
                ],
              ),
              SizedBox(
                height: 4.height,
              ),
               Row(
                 children: [
                   AppText(title: '325ml, Price' ,
                     color: AppColors.grey,
                   ),
                 ],
               ),

            ],
          ),
        )

      ],
    );
  }
}
