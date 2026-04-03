import 'package:go_router/go_router.dart';
import '../screens/home.dart';
import '../screens/details.dart';


final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/details',  builder: (context, state) => const DetailsScreen()),
    
  ],
);