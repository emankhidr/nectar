import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/extentions/string.dart';

import 'package:courses/Widget/app-carousel.dart';

import 'package:courses/Widget/app/section-title.dart';
import 'package:courses/Widget/app_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Core/utils/colors.dart';
import '../../Widget/app_text.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();

}
int counter = 1;

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(

       body: Padding(
         padding: EdgeInsets.all(16),
         child: SafeArea(
           child: Expanded(
             child: Column(
               children: [

                  Expanded(
                    child: ListView(

                       padding: EdgeInsets.zero,
                       children: [
                         Container(

                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(16.reduis),
                             color: AppColors.lightGrey

                           ),

                           width :320.width,
                           height: 200.height,


                           child:

                           Padding(
                             padding: const EdgeInsets.all(16),
                             child: AppCarousel(


                               images: [
                                 'apple'.assetPNG,
                                 'apple'.assetPNG,
                                 'apple'.assetPNG,
                               ],
                             ),
                           ),
                         ),
                         SizedBox(
                           height: 32.height,
                         ),
                         SectionTitle(title: 'Naturel Red Apple' ),
                     Row(
                       children: [
                         AppText(title: '1kg, Price' ,color: AppColors.grey,
                           fontWeight: FontWeight.w600,
                           fontSize: 16,)
                       ],
                     ),
                         SizedBox(height:  32.height),
                         Row(
                           children: [
                             _CounterButton(
                               icon: FontAwesomeIcons.minus,
                               iconColor: AppColors.grey,
                               onTap: counter <= 1 ? null : () => setState(() => counter--),
                             ),

                             AppText(
                               title: '$counter',
                               fontSize: 16,
                               fontWeight: FontWeight.w600,
                               padding: EdgeInsets.symmetric(horizontal: 16.width),
                             ),
                             _CounterButton(
                               icon: FontAwesomeIcons.plus,
                               iconColor: AppColors.primary,
                               onTap: () => setState(() => counter++),
                             ),
                             Expanded(
                               child: AppText(
                                 title: "\$4.99",
                                 fontSize: 24,
                                 fontWeight: FontWeight.w600,
                                 textAlign: TextAlign.end,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(
                           height: 32.height,
                         ),
                         Divider(
                           color: AppColors.lightGrey,
                         ),

                         Row(
                           children: [
                             Expanded
                               (child:
                             AppText(title: 'Product Details ' ,
                               fontSize: 18,
                               fontWeight: FontWeight.w600,),

                             ),
                             Image.asset('Vector 1'.assetPNG,
                             ),
                             SizedBox(
                               height: 24.height,
                             ),
                           ],

                         ),
                         Expanded(
                           child: Row(
                             children: [
                               Expanded(
                                 child: AppText(title: ''
                                     'Apples are nutritious. Apples may be good for weight loss. \n'
                                     ' apples may be good for your heart. As part of a healtful \n and varied diet.',
                                   color: AppColors.grey,
                                   fontWeight: FontWeight.w600,
                                   fontSize: 14,
                                 ),
                               ),
                             ],

                        ),
                  ),

                 SizedBox(
                   height: 32.height,
                 ),
                 Divider(
                   color: AppColors.lightGrey,
                 ),

                 Expanded(
                   child: Row(
                     children: [
                       Expanded(
                         child: AppText(title: 'Nutritions' ,fontSize: 16,
                         fontWeight: FontWeight.w600,),
                       ),

                       Container(
                           width: 32.width,
                           height: 18.height,
                           decoration: BoxDecoration(
                             color: AppColors.lightGrey,
                             borderRadius: BorderRadius.circular(6.reduis),
                           ),
                           child: Expanded(
                             child: AppText(title: '100 gr' ,
                             color: AppColors.grey,
                             fontSize: 9,
                             textAlign: TextAlign.center,
                             padding: EdgeInsets.all(4),),
                           ),
                         ),
                      SizedBox(
                        width: 24.width,
                      ),
                      Image.asset('back-arrow'.assetPNG,
                         width: 12.width,
                         height: 12.height,),

                     ],
                   ),

                 ),
                         SizedBox(
                           height: 32.height,
                         ),
                             Divider(
                               color: AppColors.lightGrey,
                             ),
                             Expanded(
                               child: Row(
                                   children: [

                                     Expanded(
                                       child: AppText(title: 'Review',
                                         fontSize: 16,
                                         fontWeight: FontWeight.w600,
                                       ),

                                     ),
                                     Expanded(
                                       child: Image.asset(
                                         'stars'.assetPNG,

                                       ),

                                     ),
                                     Image.asset('back-arrow'.assetPNG)

                            ],),

                             ),
                         SizedBox(
                           height: 16.height,
                         ),
                         AppButton(
                           title: 'Add To Basket ',
                           onTap: (){},
                         ),

    ],),
       ),


           ],
     ),
    ),
    ),
       ),
     );

  }
}

class _CounterButton extends StatelessWidget {
  const _CounterButton({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.reduis),
      onTap: onTap,
      child: Container(
        width: 44.width,
        height: 44.height,
        child: Icon(
          icon,
          color: iconColor,
          size: 20.height,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.reduis ),
          border: Border.all(
            color: AppColors.grey.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}

