import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/app_assets.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final List<String> banners = [AppAssets.image1, AppAssets.image2, AppAssets.image3];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: double.infinity,
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CarouselSlider.builder(
              itemCount: banners.length,
              itemBuilder: (context, index, realIndex) {
                return Image.asset(banners[index], fit: BoxFit.cover, width: double.infinity);
              },
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                onPageChanged: (index, reason) {
                  setState(() => activeIndex = index);
                },
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: banners.length,
              effect: ExpandingDotsEffect(
                dotHeight: 6,
                dotWidth: 10,
                activeDotColor: Colors.green.shade700,
                dotColor: Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
