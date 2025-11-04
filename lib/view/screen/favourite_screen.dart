import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_project/core/app_assets.dart';
import 'package:grocery_project/core/theme_color.dart';
import 'package:grocery_project/model/product_model.dart';

import '../widget/app_bar_widget.dart';

class FavouriteScreen extends StatefulWidget {
  FavouriteScreen({Key? key}) : super(key: key);

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  // List<ProductModel> favourite = [
  //   ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  //   ProductModel(name: "Diet Coke", pcs: "355ml, Price", image: AppAssets.coca, price: 1.99),
  //   ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  //   ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  //   ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  //   ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  //   ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  //   ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  //   ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  //   ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  //   ProductModel(name: "Sprite Can", pcs: "325ml, Price", image: AppAssets.sprite, price: 1.50),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: "Favourite"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (context, index) {
                  final product = productList[index];
                  return InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: CachedNetworkImage(
                        imageUrl: product.image,
                        width: 30,
                        placeholder: (context, url) {
                          return CircularProgressIndicator();
                        },
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                      title: Text(
                        product.name,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                      ),
                      subtitle: Text(
                        product.pcs,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ThemeColor.thirdColor),
                      ),
                      trailing: SizedBox(
                        width: 70,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Text(
                                "\$${product.price.toString()}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            // SizedBox(width: 8),
                            SvgPicture.asset(AppAssets.arrowForward, color: Colors.black, width: 8, height: 14),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(thickness: 1, color: Colors.grey[400]);
                },
                itemCount: productList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
