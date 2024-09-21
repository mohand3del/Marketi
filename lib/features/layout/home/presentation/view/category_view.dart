

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/category/category_view_body.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: BlocProvider(
            create: (context) => HomeCubit(getIt(),getIt(),getIt())..getCategories(),
            child: const CategoryViewBody()));
  }
}
