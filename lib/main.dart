import 'package:bookly/Features/home/data/repos/Home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/featuredbookscubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/newsetbookscubit/newset_books_cubit.dart';
import 'package:bookly/Features/splash/Presentation/Views/Splash_view.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/core/utlis/api_services.dart';
import 'package:bookly/core/utlis/service_lacator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookly/core/utlis/app_routrs.dart';

void main() {
  setupServiceLactor();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(
            getIt<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt<HomeRepoImpl>(),
          ),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
