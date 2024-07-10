import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/build_popular_item.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';



class CustomPopularProduct extends StatelessWidget {
  const CustomPopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context,state) {
        if (state is PopularLoading) {
          return const Center(child: CircularProgressIndicator(),);
        }
        else if (state is PopularSuccess) {
          return Column(
            children: [
              Row(
                children: [
                  Text('Popular Product',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/popular');
                    },
                    child: const Text('View all'),
                  ),
                ],
              ),
              SizedBox(
                height: 154.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      BuildPopularItem(product:state.data[index]),
                  separatorBuilder: (context, index) =>
                      SizedBox(
                        width: 16.w,
                      ),
                  itemCount: state.data.length,

                ),
              ),

            ],
          );


        }

        else if (state is Error) {
        return Center(child: Text("${state.error}"),);
        } else {
        return Container();
        }
      });

  }
}
