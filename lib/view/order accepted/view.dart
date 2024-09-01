import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/extentions/string.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:courses/Widget/app_buttons.dart';
import 'package:courses/Widget/app_text.dart';
import 'package:flutter/material.dart';

class orderAccepted extends StatelessWidget {
  const orderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,


          children: [

            Image.asset(
              'accept'.assetPNG,
              width: 268.width,
              height: 240.height,
            ),


            AppText(title: 'Your Order has been \n accepted '  ,
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(.7),
              height: 30.height,
              textAlign: TextAlign.center,

            ),

            AppText(title: 'Your items has been placed and is on \n it’s way to being processed'  ,
              fontSize: 16,
               textAlign: TextAlign.center,
              color: Colors.grey,
              height: 30.height,

            ),
                  SizedBox(
                    height: 90.height,
                  ),


                      AppButton(title: 'Track Order ' ,
                      onTap: (){},


                    ),


                  InkWell(

                      onTap: (){},
                      child: AppText(title: 'Back to home ' , color: Colors.black,
                        textAlign: TextAlign.center,
                        fontSize: 16.height,
                        fontWeight: FontWeight.w500,
                        height: 48.height,

                      ),

                    ),




        ],),
      ),
    );
  }
}