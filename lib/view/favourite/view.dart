import 'package:courses/Core/extentions/double.dart';

import 'package:courses/Widget/app/favourite-card.dart';
import 'package:courses/Widget/app_buttons.dart';
import 'package:courses/Widget/app_text.dart';
import 'package:flutter/material.dart';

import '../../Core/utils/colors.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: AppText(title: 'Favourite' ,fontWeight: FontWeight.w600, fontSize: 20,
          ),
        )

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.separated(
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return FavouriteCard();
                  }, separatorBuilder: (context, index)=> Divider(
                  color: AppColors.lightGrey,
                ),)
            ),
            SizedBox(
              height: 20.height,
            ),
            AppButton(title: 'Add All To Cart ' ,
            onTap: (){},)
          ],
        ),
      ),
    );
  }
}
