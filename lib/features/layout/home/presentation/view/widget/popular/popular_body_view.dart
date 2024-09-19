import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/popular/custom_popular_card_item.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/custom_search.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';

import '../custom_app_bar_two.dart';

class PopularBodyView extends StatelessWidget {
  const PopularBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context,state) {
       if(state is PopularLoading){
         return Center(child: CircularProgressIndicator());
       }else if(state is PopularSuccess){
         return SafeArea(
           child: Padding(
             padding: EdgeInsets.symmetric(
               horizontal: 14.w,
               vertical: 14.h,
             ),
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   CustomBar(title: "Popular Product"),
                   const CustomSearch(),
                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 10.w),
                     child: Align(
                       alignment: Alignment.centerLeft,
                       child: Text(
                         'All Product',
                         style: TextStyle(
                           fontSize: 20.sp,
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                     ),
                   ),
                   GridView.builder(
                     shrinkWrap: true,
                     physics: const NeverScrollableScrollPhysics(),
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       crossAxisSpacing: 10.w,
                       mainAxisSpacing: 10.h,
                       childAspectRatio: 0.82.h,
                     ),
                     itemBuilder: (context, index) {
                       return  CustomPopularCardItem(products:state.data[index] ,);
                     },
                     itemCount: state.data.length,
                   ),
                 ],
               ),
             ),
           ),
         );
       }
       else if (state is Error){
         return Text(state.error);
       }
       return Container();
      }
    );
  }
}
