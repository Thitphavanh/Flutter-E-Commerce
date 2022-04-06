import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        name,
        imageUrl,
      ];

  static List<Category> categories = [
    Category(
        name: 'iPhone 13 Pro Max',
        imageUrl:
            'https://www.apple.com/newsroom/images/product/iphone/standard/Apple-iPhone13-Pro-alpine-green-hero-2up-220308_big_carousel.jpg.slideshow-xlarge_2x.jpg'),
    Category(
        name: 'Macbook Studio',
        imageUrl:
            'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/mac-studio-select-202203?wid=904&hei=840&fmt=jpeg&qlt=80&.v=1645739294025'),
    Category(
        name: 'Macbook Studio Display',
        imageUrl:
            'https://www.apple.com/newsroom/images/product/mac/standard/Apple-Mac-Studio-Studio-Display-hero-220308_big.jpg.slideshow-xlarge_2x.jpg'),
    Category(
        name: 'Macbook M1 Pro',
        imageUrl:
            'https://media.wired.com/photos/616dbbf068e20e14c563bb3f/191:100/w_1280,c_limit/Gear-Apple-Macbook-Pros-M1-Pro-2021.jpg'),
    Category(
        name: 'Macbook M1 Pro Max',
        imageUrl:
            'https://musictech.com/wp-content/uploads/2021/10/mbp-product@2000x1500.jpg'),
  ];
}
