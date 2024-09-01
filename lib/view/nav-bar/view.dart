import 'package:courses/core/extentions/double.dart';
import 'package:courses/core/extentions/string.dart';
import 'package:courses/core/utils/colors.dart';
import 'package:courses/view/account/view.dart';
import 'package:courses/view/explore/view.dart';
import 'package:courses/view/favourite/view.dart';
import 'package:courses/view/home/view.dart';
import 'package:courses/view/cart/view.dart';
import 'package:courses/Widget/app_text.dart';
import 'package:flutter/material.dart';


class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
          [
            HomeView(),
            ExploreView(),
           FavouriteView(),
            CartView(),
            AccountView(),
          ][currentIndex],



      bottomNavigationBar: Container(
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _tab(
                title: 'shop',
                image: "home",
                index: 0,
              ),
              _tab(
                title: 'explore',
                image: "explore",
                index: 1,

              ),
              _tab(
                title: 'cart',
                image: "cart",
                index: 2,
              ),
              _tab(
                title: 'favourite',
                image: "heart",
                index: 3,
              ),
              _tab(
                title: 'Account',
                image: "user",
                index: 4,
              ),


            ],
          ),
        ),
     decoration: BoxDecoration(
       color: AppColors.white,
       borderRadius: BorderRadius.circular(16),
       boxShadow: [
         BoxShadow(
           color: AppColors.grey.withOpacity(.2),
           offset: Offset(0, -12),
           blurRadius: 37,

         ),
       ],

     ),
      ),

    );
  }

  Widget _tab({
    required String image,
    required String title,
    required int index,
}){
    final isSelected = currentIndex == index;
    return   Expanded(
      child: InkWell(
        onTap: () => setState(() => currentIndex = index),
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children:[
            Image.asset(
              image.assetPNG,
              width: 28.height,
              height:28.height ,
              color: isSelected? AppColors.primary : AppColors.black,
            ),
            SizedBox(
              height: 6.height,
            ),
            AppText(
              title: title,
              fontSize: 14,
              fontWeight: isSelected? FontWeight.w600 : FontWeight.w400,
              color: isSelected?  AppColors.primary : AppColors.black,



            ),
          ],),
      ),
    );

  }
}


