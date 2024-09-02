import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/extentions/string.dart';
import 'package:courses/Widget/app/product-card.dart';
import 'package:flutter/material.dart';

import '../../Core/utils/colors.dart';
import '../app_text.dart';

class SectionTitle  extends StatelessWidget {
  const SectionTitle ({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppText(title: title ,
            fontSize: 24,
            fontWeight: FontWeight.w600,

          ),
          
          
        ),
   

    Image.asset(''
        'heart 1'.assetPNG,
      width: 24.width,
      height: 24.height,
      
    ),
        SizedBox(
          height: 4.height,
        ),


      ],
      
    );
  }
}
