import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/route_Units/route_units.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:courses/Widget/app-check-box.dart';
import 'package:courses/Widget/app/filter-check-box.dart';
import 'package:courses/Widget/app_buttons.dart';
import 'package:courses/Widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Filter '),
        leading: IconButton( icon: Icon(
          FontAwesomeIcons.xmark
        ), onPressed: ()=> RouteUtils.pop(context)
        ),

      ),
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 16),
        child: SafeArea(
          child: ListView(

            children: [
              SizedBox(
                height: 20.height,
              ),
              AppText(title: 'Categories' ,
              fontSize: 20,
              fontWeight: FontWeight.w600,),
              SizedBox(
                height: 8.height,
              ),

           ...[1,2,3].map((e){
             return FilterCheckBox(
               isSelected: e.isOdd,
             );

              }),
              SizedBox(
                height: 20.height ,
              ),
              AppText(title: 'Brand' ,
                fontSize: 20,
                fontWeight: FontWeight.w600,),
              SizedBox(
                height: 8.height,
              ),

              ...[1,2,3].map((e){
                return FilterCheckBox(
                  isSelected: e.isEven,
                );

              }),

              SizedBox(
                height: 40.height,
              ),
              AppButton(title: 'Apply filter',
              onTap: (){},)
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          )
        ),
      ),
    );
  }
}
