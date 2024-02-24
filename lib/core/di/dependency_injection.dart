import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:marketi/core/network/api_service.dart';
import 'package:marketi/core/network/dio_factory.dart';
import 'package:marketi/features/auth/login/data/reposetory/login_repo.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/login_cubit.dart';
import 'package:marketi/features/auth/signUp/data/repos/sign_up_repo.dart';
import 'package:marketi/features/auth/signUp/view_model/cubit/signup_cubit.dart';



final getIt = GetIt.instance;



Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  //

}