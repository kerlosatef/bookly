import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/Home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/smillerbooks/smillerbooks_cubit.dart';
import 'package:bookly/Features/home/presentation/views/Home_view.dart';
import 'package:bookly/Features/home/presentation/views/book_deatils_view.dart';
import 'package:bookly/Features/search/Presentation/views/Search_view.dart';
import 'package:bookly/Features/splash/Presentation/Views/Splash_view.dart';
import 'package:bookly/core/utlis/service_lacator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SmillerbooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
    ],
  );
}
