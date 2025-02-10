import 'package:bookly/Features/home/presentation/views/Home_view.dart';
import 'package:bookly/Features/home/presentation/views/book_deatils_view.dart';
import 'package:bookly/Features/search/Presentation/views/Search_view.dart';
import 'package:bookly/Features/splash/Presentation/Views/Splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
