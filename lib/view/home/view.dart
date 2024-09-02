import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/extentions/string.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:courses/Widget/app-carousel.dart';
import 'package:courses/Widget/app/product-card.dart';
import 'package:courses/Widget/app/section-title.dart';
import 'package:courses/Widget/app_text-field.dart';
import 'package:courses/Widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'logo'.assetPNG,
            height: 32.height,
            width: 32.width,

          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
               FontAwesomeIcons.locationPin,
                  color: AppColors.darkGrey,
                ),
                SizedBox(
                  width: 4.width,
                ),
                AppText(title: 'Mansoura , Egypt' ,
                  color: AppColors.darkGrey,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,

                ),

              ],
            ),
            SizedBox(
              height: 20.height,
            ),
            AppTextField(
              hint: 'search',
              leading: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20.height,
              ),



            ),
            SizedBox(
              height: 20.height,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  AppCarousel(
                    images: [
                      'https://www.culinaryhill.com/wp-content/uploads/2023/02/11-Ways-to-Eat-More-Vegetables-Culinary-Hill.jpg',
                      'https://www.vikhrolicucina.com/uploads/stories/1656074579_healthyvegetableswoodentable.jpg',
                      'https://spendsmart.extension.iastate.edu/wp-content/uploads/2014/06/vegetables-variety.jpg'
                    ],
                  ),
                  SizedBox(
                    height: 20.height,
                  ),
                  SectionTitle(title: 'Exclusive Offer ',),
                ],
              ),
            ),
            SizedBox(height: 20.height,),
            SizedBox(
              height: ProductCard.height,
              child: ListView.separated(
                itemCount: 3,
                scrollDirection:Axis.horizontal ,
                itemBuilder: (context, index){
                  return ProductCard();
                },
                separatorBuilder: (context, index) => SizedBox(width: 16.width,),

              ),
            ),
            SizedBox(
              height: 20.height,
            ),
            SectionTitle(title: 'Best selling ',),


          SizedBox(height: 20.height,),
            SizedBox(
            height: ProductCard.height,
             child: ListView.separated(
              itemCount: 4,
              scrollDirection:Axis.horizontal ,
             itemBuilder: (context, index){
              return ProductCard();
               },
                separatorBuilder: (context, index) => SizedBox(width: 16.width,),

             ),
          ),



      ],
        ),
      ),
    );
  }
}

