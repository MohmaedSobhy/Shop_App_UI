import 'package:go_router/go_router.dart';
import 'package:shop_ui/feature/home/data/model/product.dart';
import 'package:shop_ui/feature/home/presentation/screens/home_screen.dart';
import 'package:shop_ui/feature/home/presentation/screens/product_screen.dart';

abstract class AppRouter {
  static const String homeScreen = '/';
  static const String productScreen = '/productScreen';
  static const String cartScreen = '/cartScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeScreen,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: productScreen,
        builder: (context, state) {
          return ProductScreen(
            product: state.extra as Product,
          );
        },
      ),
    ],
  );
}
