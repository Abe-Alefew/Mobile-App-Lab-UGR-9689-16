import 'package:go_router/go_router.dart';
import '../screens/home.dart';
import '../screens/product_detail.dart';


final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/product/:id',
   builder: (context, state) {
        final id = state.pathParameters['id']!;
        final filter = state.uri.queryParameters['filter'] ?? 'none';
        return ProductDetailsScreen(id: id, filter: filter);
      }
    ),
    
  ],
);