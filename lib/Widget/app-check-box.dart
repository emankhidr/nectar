import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({super.key, required this.isSelected});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.width,
      height: 24.height,
      child: isSelected? Icon(
        FontAwesomeIcons.check,
        color: AppColors.white,
        size: 16.height,
      ): null,
      decoration: BoxDecoration(
        color: isSelected? AppColors.primary: AppColors.white,
        borderRadius: BorderRadius.circular(8.reduis ),
        border: Border.all(
          color: isSelected? AppColors.primary: AppColors.grey,
        )
      ),
    );
  }
}
