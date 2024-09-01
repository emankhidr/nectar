
import 'package:courses/Widget/app_text.dart';
import 'package:flutter/material.dart';

import '../Core/utils/colors.dart';

class AppAppBar  extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    this.title,
    this.trailing,
    this.leading,
    this.textAlign,


  });

  final String? title;
  final Widget? trailing;
  final Widget? leading;
  final TextAlign ?textAlign;

  @override
  Widget build(BuildContext context) {
    return AppBar(

     title: title == null ? SizedBox() : AppText(

       title: title!,
       fontSize: 20 ,
       fontWeight: FontWeight.w600,
       textAlign: textAlign,




     ),
      leading: leading,
      actions: [
        if ( trailing != null)
        trailing!
      ],
      iconTheme: IconThemeData(
        size: 20,
        color: AppColors.black,
      ),
      actionsIconTheme: IconThemeData(
       size: 20,
        color: AppColors.black,
      ),
    );
  }
  @override
  Size get preferredSize => AppBar().preferredSize;

}



