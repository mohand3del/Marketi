import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:marketi/core/network/api_service.dart';
import 'package:marketi/core/network/dio_factory.dart';
import 'package:marketi/features/auth/login/data/reposetory/google_repo.dart';
import 'package:marketi/features/auth/login/data/reposetory/login_repo.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/google_cubit.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/login_cubit.dart';
import 'package:marketi/features/auth/otp/data/repo/forgot_repo.dart';
import 'package:marketi/features/auth/otp/data/repo/new_password_repo.dart';
import 'package:marketi/features/auth/otp/data/repo/reset_repo.dart';
import 'package:marketi/features/auth/otp/data/repo/verify_repo.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/forgot_cubit.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/new_password_cubit.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/reset_cubit.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/verify_cubit.dart';
import 'package:marketi/features/auth/signUp/data/repos/sign_up_repo.dart';
import 'package:marketi/features/auth/signUp/view_model/cubit/signup_cubit.dart';
import 'package:marketi/features/layout/home/data/repo/categories_repo.dart';
import 'package:marketi/features/layout/home/data/repo/popular_repo.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';



final getIt = GetIt.instance;



Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // google
  getIt.registerLazySingleton<GoogleRepo>(() => GoogleRepo(getIt()));
  getIt.registerFactory<GoogleCubit>(() => GoogleCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  //
  getIt.registerLazySingleton<ForgotRepo>(() => ForgotRepo(getIt()));
  getIt.registerFactory<ForgotCubit>(() => ForgotCubit(getIt()));

  //
  getIt.registerLazySingleton<ResetRepo>(() => ResetRepo(getIt()));
  getIt.registerFactory<ResetCubit>(() => ResetCubit(getIt()));
  //
  getIt.registerLazySingleton<VerifyRepo>(() => VerifyRepo(getIt()));
  getIt.registerFactory<VerifyCubit>(() => VerifyCubit(getIt()));
  //
  getIt.registerLazySingleton<NewPasswordRepo>(() => NewPasswordRepo(getIt()));
  getIt.registerFactory<NewPasswordCubit>(() => NewPasswordCubit(getIt()));
  //
  getIt.registerLazySingleton<PopularRepo>(() => PopularRepo(getIt()));
  getIt.registerLazySingleton<CategoriesRepo>(() => CategoriesRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt(

  ),getIt()));

}