import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/cubit/cubit.dart';
import '../view_model/cubit/states.dart';
import 'widget/bottom_nav_bar.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=LayoutCubit.get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
