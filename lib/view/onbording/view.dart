import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/extentions/string.dart';
import 'package:courses/Widget/app_buttons.dart';
import 'package:courses/Widget/app_text.dart';
import 'package:courses/core/utils/colors.dart';
import 'package:flutter/material.dart';


class onboardingView extends StatelessWidget {
  const onboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children:[ Image.asset(
          'onboarding-bg'.assetPNG,
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,

            children:[
              Image.asset(
                'white-logo'.assetPNG,
                height: 48.height,
                width: 48.width,
              ),
              SizedBox(
                height: 32.height,
              ),
              AppText(title : 'Welcome\n  to our store ',
                 fontSize: 48,
              color: Colors.white,
                height:  56.height,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center ,
            ),
              SizedBox(
                height: 56.height,
              ),
              AppText(title : 'Ger your groceries in as fast as one hour ',

                color: Colors.grey,

                textAlign: TextAlign.center ,
                fontSize: 16,
              ),

               AppButton(


                     title: 'Get Start',
                   onTap: (){},
             margin: EdgeInsets.symmetric(
           horizontal: 16.width,
           vertical: 48.height ,
         ),


    ),




        ],
          ),


    ],),
    );
  }
}
