import 'package:go_router/go_router.dart';
import '../screens/home.dart';
import '../screens/details.dart';


final router = GoRouter(
  routes: [
    GoRoute(path: '/',name: 'home', builder: (_, _) => const HomeScreen()),
    GoRoute(path: '/details', name: 'details', builder: (_, _) => const DetailsScreen()),
      
  ],
);