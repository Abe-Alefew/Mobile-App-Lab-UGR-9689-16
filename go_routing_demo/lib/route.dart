import 'package:go_router/go_router.dart';
import '../screens/home.dart';
import '../screens/details.dart';
import 'screens/product_detail.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', name:'home', builder: (_, _) => const HomeScreen()),
    GoRoute(path: '/details', name:'details', builder: (_, _) => const DetailsScreen()),
    GoRoute(path: '/product/:id',
     builder: (context,state) {
      final id = state.pathParameters['id']!; // if null throw an error
      final filter = state.uri.queryParameters['filter'] ?? 'all';// if filter avaliable use it otherwise use all
      return ProductDetailsScreen(id: id, filter: filter);
     })
  ],
);