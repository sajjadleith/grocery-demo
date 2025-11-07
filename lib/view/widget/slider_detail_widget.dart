import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/theme_color.dart';

class SliderDetailWidget extends StatefulWidget {
  SliderDetailWidget({Key? key}) : super(key: key);

  @override
  _SliderDetailWidgetState createState() => _SliderDetailWidgetState();
}

class _SliderDetailWidgetState extends State<SliderDetailWidget> {
  List<String> images = [AppAssets.image1, AppAssets.image2, AppAssets.image3];
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 371,
      decoration: BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22, right: 22, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      alignment: Alignment.center,
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      child: SvgPicture.asset(
                        AppAssets.arrowBack,
                        colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                        width: 18,
                        height: 18,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      alignment: Alignment.center,
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      child: SvgPicture.asset(
                        AppAssets.upload,
                        colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                        width: 18,
                        height: 18,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 200,
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: PageView.builder(
              controller: _pageController,
              itemCount: images.length,
              onPageChanged: (index) {
                _currentPage = index;
                setState(() {});
              },
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(22),
                    image: DecorationImage(image: AssetImage(images[index]), fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              return AnimatedContainer(
                margin: EdgeInsets.symmetric(horizontal: 4),
                duration: Duration(milliseconds: 300),
                width: _currentPage == index ? 20 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _currentPage == index ? ThemeColor.primaryColor : Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
