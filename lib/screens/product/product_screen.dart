import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/models.dart';

import 'package:flutter_ecommerce/widgets/custom_appbar.dart';
import 'package:flutter_ecommerce/widgets/custom_navbar.dart';
import 'package:flutter_ecommerce/widgets/hero_carousel_card.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProductScreen(product: product),
    );
  }

  final Product product;

  const ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: Text(
                  'ADD TO CART',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: [
              HeroCarouselCard(
                product: product,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.bottomCenter,
                  // color: Colors.black.withAlpha(50),
                ),
                Container(
                  // margin: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 60,
                  // color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.black),
                        ),
                        Text(
                          '${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Product Information',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              children: [
                ListTile(
                  title: Text(
                    'iPhone 13 Pro and 13 Pro Max. Huge camera upgrades. New OLED display with ProMotion. Fastest smartphone chip ever. Breakthrough battery life',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ExpansionTile(
              title: Text(
                'Delivery Information',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              children: [
                ListTile(
                  title: Text(
                    'iPhone 13 Pro and 13 Pro Max. Huge camera upgrades. New OLED display with ProMotion. Fastest smartphone chip ever. Breakthrough battery life',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
