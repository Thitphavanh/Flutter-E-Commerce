import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPoppular;
  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPoppular,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPoppular,
      ];
  static List<Product> products = [
    Product(
      name: 'iPhone 13 Pro Max',
      category: 'iPhone 13 Pro Max',
      imageUrl:
          'https://www.apple.com/newsroom/images/product/iphone/standard/Apple-iPhone13-Pro-alpine-green-hero-2up-220308_big_carousel.jpg.slideshow-xlarge_2x.jpg',
      price: 16731000,
      isRecommended: true,
      isPoppular: false,
    ),
    Product(
      name: 'iPhone 13 Pro Max',
      category: 'iPhone 13 Pro Max',
      imageUrl:
          'https://www.apple.com/newsroom/images/product/iphone/standard/Apple-iPhone13-Pro-alpine-green-hero-2up-220308_big_carousel.jpg.slideshow-xlarge_2x.jpg',
      price: 16731000,
      isRecommended: false,
      isPoppular: true,
    ),
    Product(
      name: 'Macbook Studio',
      category: 'Macbook Studio',
      imageUrl:
          'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/mac-studio-select-202203?wid=904&hei=840&fmt=jpeg&qlt=80&.v=1645739294025',
      price: 27261000,
      isRecommended: true,
      isPoppular: true,
    ),
    Product(
      name: 'Macbook Studio Display',
      category: 'Macbook Studio Display',
      imageUrl:
          'https://www.apple.com/newsroom/images/product/mac/standard/Apple-Mac-Studio-Studio-Display-hero-220308_big.jpg.slideshow-xlarge_2x.jpg',
      price: 21411000,
      isRecommended: true,
      isPoppular: false,
      
    ),
    Product(
      name: 'Macbook Studio Display',
      category: 'Macbook Studio Display',
      imageUrl:
          'https://www.apple.com/newsroom/images/product/mac/standard/Apple-Mac-Studio-Studio-Display-hero-220308_big.jpg.slideshow-xlarge_2x.jpg',
      price: 21411000,
      isRecommended: false,
      isPoppular: true,
      
    ),
    Product(
      name: 'Macbook M1 Pro',
      category: 'Macbook M1 Pro',
      imageUrl:
          'https://media.wired.com/photos/616dbbf068e20e14c563bb3f/191:100/w_1280,c_limit/Gear-Apple-Macbook-Pros-M1-Pro-2021.jpg',
      price: 28821000,
      isRecommended: true,
      isPoppular: true,
    ),
    Product(
      name: 'Macbook M1 Pro Max',
      category: 'Macbook M1 Pro Max',
      imageUrl:
          'https://musictech.com/wp-content/uploads/2021/10/mbp-product@2000x1500.jpg',
      price: 34476000,
      isRecommended: true,
      isPoppular: true,
    ),
  ];
}
