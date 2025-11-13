import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_project/model/product_model.dart';
import 'package:grocery_project/provider/cart_provider.dart';
import 'package:grocery_project/provider/fav_provider.dart';
import 'package:provider/provider.dart';

import '../../app_assets.dart';
import '../../theme_color.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.product});

  final ProductModel product;
  final String imageUrl = "https://picsum.photos/200/300.jpg";
  final bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180,
          // height: 248,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: ThemeColor.borderColor),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: 100,
                  height: 60,
                  placeholder: (context, url) {
                    return CircularProgressIndicator();
                  },
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Text(
                  product.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  product.pcs,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ThemeColor.thirdColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      child: Text(
                        "\$${product.price.toString()}",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(17),
                      onTap: () {
                        context.read<CartProvider>().addToCart(product);
                      },
                      child: Ink(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: ThemeColor.primaryColor,
                        ),
                        child: Center(child: SvgPicture.asset(AppAssets.increase, width: 17, height: 17)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Selector<FavProvider, bool>(
          builder: (context, favProvider, child) {
            return Positioned(
              top: -2,
              right: -3,
              child: IconButton(
                onPressed: () {
                  context.read<FavProvider>().toggleFav(product);
                },
                icon: Icon(
                  context.read<FavProvider>().isFav(product) ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            );
          },
          selector: (context, prov) {
            return prov.isFav(product);
          },
        ),
      ],
    );
  }
}
