import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ecommerce/models/category_model.dart';
import 'package:flutter_ecommerce/models/models.dart';
import 'package:flutter_ecommerce/widgets/custom_appbar.dart';
import 'package:flutter_ecommerce/widgets/custom_navbar.dart';
import 'package:flutter_ecommerce/widgets/hero_carousel_card.dart';
import 'package:flutter_ecommerce/widgets/product_carousel.dart';
import 'package:flutter_ecommerce/widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Phenomenal'),
      bottomNavigationBar: CustomNavBar(),
      body: ListView(
        children: [
          Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.categories
                    .map(
                      (category) => HeroCarouselCard(category: category),
                    )
                    .toList(),
              ),
              SectionTitle(title: 'RECOMMENDED'),
              ProductCarousel(
                  products: Product.products
                      .where((product) => product.isRecommended)
                      .toList()),
              SectionTitle(title: 'MOST POPULAR'),
              ProductCarousel(
                  products: Product.products
                      .where((product) => product.isPoppular)
                      .toList()),
            ],
          ),
        ],
      ),
    );
  }
}
