import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/popular/popular_body_view.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';

class PopularView extends StatelessWidget {
  const PopularView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  BlocProvider(
          create: (context) => HomeCubit(getIt(),getIt(),getIt())..getPopularProducts(),

          child: const PopularBodyView()),
    );
  }
}
