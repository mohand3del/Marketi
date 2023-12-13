import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi/features/layout/presentation/view_model/cubit/cubit.dart';
import 'package:marketi/features/layout/presentation/view_model/cubit/states.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=LayoutCubit.get(context);
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
          child: BottomNavigationBar(
            onTap: (index)
            {
              cubit.changeCurrentIndex(index);
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: cubit.currentIndex,
            unselectedItemColor: const Color(0xff67687E),
            selectedItemColor: const Color(0xff3F80FF),
            backgroundColor: Colors.white,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(FontAwesomeIcons.houseChimney),
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(FontAwesomeIcons.cartShopping),
              ),
              BottomNavigationBarItem(
                label: 'Favorites',
                icon: Icon(FontAwesomeIcons.heart),
              ),
              BottomNavigationBarItem(
                label: 'Menu',
                icon: Icon(FontAwesomeIcons.bars),
              ),
            ],
          ),
        );
      },
    );
  }
}
