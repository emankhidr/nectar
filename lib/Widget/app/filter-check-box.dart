import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:flutter/cupertino.dart';

import '../app-check-box.dart';
import '../app_text.dart';

class FilterCheckBox extends StatelessWidget {
  const FilterCheckBox ({super.key, required this.isSelected});

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row
        (children:[
        AppCheckBox(isSelected: isSelected,),
        SizedBox(
          width: 8.width,
        ),
        AppText(title: 'Eggs'
        ,color: isSelected? AppColors.primary: AppColors.black,),

      ],),
    );

  }
}
