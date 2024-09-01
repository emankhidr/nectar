import 'package:courses/Core/extentions/double.dart';
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

        AppText(title: ' sea all' ,
          fontSize: 16.height,

          color: AppColors.primary,

        ),
      ],
    );
  }
}
