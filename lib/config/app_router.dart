import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/category_model.dart';
import 'package:flutter_ecommerce/models/models.dart';
import 'package:flutter_ecommerce/screens/cart/cart_screen.dart';
import 'package:flutter_ecommerce/screens/catalog/catalog_screen.dart';
import 'package:flutter_ecommerce/screens/chat/chat_screen.dart';
import 'package:flutter_ecommerce/screens/home/home_screen.dart';
import 'package:flutter_ecommerce/screens/product/product_screen.dart';
import 'package:flutter_ecommerce/screens/wishlist/wishlist_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case ChatScreen.routeName:
        return ChatScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
    );
  }
}
