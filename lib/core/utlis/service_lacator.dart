import 'package:bookly/Features/home/data/repos/Home_repo_impl.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/utlis/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLactor() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt<ApiServices>(),
  ));
}
