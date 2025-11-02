import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopScreen extends StatefulWidget {
  ShopScreen({Key? key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final List<String> banners = [AppAssets.image1, AppAssets.image2, AppAssets.image3];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
          child: CustomScrollView(
            slivers: [
              /// Logo + Location
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(child: SvgPicture.asset(AppAssets.carrotLogo, width: 30)),
                    const SizedBox(height: 5),
                    const Text(
                      "Dhaka, Banassre",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),

              /// Search Bar
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: ThemeColor.thirdColor),
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                      filled: true,
                      fillColor: const Color(0xffF2F3F2),
                    ),
                  ),
                ),
              ),

              /// Banner Section
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    /// Carousel
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: double.infinity,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CarouselSlider.builder(
                          itemCount: banners.length,
                          itemBuilder: (context, index, realIndex) {
                            return Image.asset(
                              banners[index],
                              fit: BoxFit.cover,
                              width: double.infinity, // الصورة تاخذ كل العرض
                            );
                          },
                          options: CarouselOptions(
                            viewportFraction: 1, // يخلي الصورة تاخذ العرض كامل
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            onPageChanged: (index, reason) {
                              setState(() => activeIndex = index);
                            },
                          ),
                        ),
                      ),
                    ),

                    /// Indicator بالنص من الصفحة (مو جوه الصورة)
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
