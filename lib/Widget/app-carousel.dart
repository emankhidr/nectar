import 'package:carousel_slider/carousel_slider.dart';
import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:flutter/material.dart';

class AppCarousel extends StatefulWidget {
  const AppCarousel({super.key, required this.images});

  final List<String> images;

  @override
  State<AppCarousel> createState() => _AppCarouselState();
}

class _AppCarouselState extends State<AppCarousel> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items:widget.images.map((e)
          {
             return ClipRRect(
               borderRadius: BorderRadius.circular(8.reduis) ,
               child: Image.network(e ,

                 fit: BoxFit.cover,
                 width: double.infinity,

               ),
             );
        }).toList(),



          options: CarouselOptions(
            height: 116.height,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            onPageChanged: (index , _ ) => setState(() => currentIndex = index

            ),
          ),

        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.images.map((e){
              final isSelected = widget.images.indexOf(e) == currentIndex;
             return Container(
                width :  (isSelected ? 30 : 10 ).width,
                height: 12.height,
                margin: EdgeInsets.symmetric(
                  horizontal: 4.width,
                ),

                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primary : AppColors.grey,
                  borderRadius: isSelected ? BorderRadius.circular(12 ): null ,
                  shape: isSelected ? BoxShape.rectangle : BoxShape.circle,

                ),
              );

            }).toList(),
          ),
        )
      ],
    );
  }
}
