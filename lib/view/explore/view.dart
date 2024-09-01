import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:courses/Widget/app-app-bar.dart';
import 'package:courses/Widget/app/category-card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Widget/app_text-field.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Find products' ,
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
        child:Column(
          children: [
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
            Expanded(child: GridView.builder(
              itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,
                    childAspectRatio: CategoryCard.aspectRatio ,
                mainAxisSpacing:16.height ,
                crossAxisSpacing:12.width ,),


                 itemBuilder: (context, index){
              return CategoryCard();
                },),),
          ],
        ),
      ),
    );
  }
}
