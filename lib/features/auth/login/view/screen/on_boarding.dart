import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/core/helper/cache_helper.dart';
import 'package:marketi/core/utils/onBoarding_list.dart';
import 'package:marketi/features/auth/login/view/screen/login_screen.dart';
import 'package:marketi/features/auth/login/view_model/AuthCubit/auth_cubit.dart';

import 'package:marketi/features/layout/presentation/view/layout_view.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({
    super.key,
  });
  int currentPage = 0;
  late PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, Object? state) {
          var cubit = AuthCubit.get(context);
          return Scaffold(
            backgroundColor: Color(0xffFFFFFFFF),
            body: SafeArea(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: PageView.builder(
                        controller: cubit.pageController,
                        onPageChanged: (index) {
                          cubit.changeCurrentIndex(index);
                        },
                        itemCount: onBoardingList.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            SizedBox(
                              height: 50.h,
                            ),
                            Image.asset(onBoardingList[index].image!),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      ...List.generate(
                                          onBoardingList.length,
                                          (index) => AnimatedContainer(
                                                duration: Duration(
                                                    microseconds: 100),
                                                margin:
                                                    EdgeInsets.only(right: 5),
                                                height: cubit.currentIndex ==
                                                        index
                                                    ? 20
                                                    : 18,
                                                width: cubit.currentIndex ==
                                                        index
                                                    ? 20
                                                    : 18,
                                                decoration: BoxDecoration(
                                                  color: cubit.currentIndex ==
                                                          index
                                                      ? AppColor.darkBlue
                                                      : AppColor.lightBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10),
                                                ),
                                              )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              onBoardingList[index].title!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.darkBlue),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 35, left: 15, right: 15),
                              child: Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                child: Text(
                                  onBoardingList[index].textBody!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.darkBlue,
                                    fontSize: 16.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 40, right: 16, left: 16),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                width: 347.w,
                                height: 48.h,
                                child: MaterialButton(
                                  color: AppColor.primaryColor,
                                  textColor: Colors.white,
                                  padding: EdgeInsets.only(right: 50, left: 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  onPressed: () {
                                    if (context.read<AuthCubit>().currentIndex <
                                        onBoardingList.length - 1) {
                                      context.read<AuthCubit>().nextPage();
                                    } else {

                                      CacheHelper.insertCache(key: 'onBoarding', value: true).then((value) => {
                                        if(value){
                                          Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (_) => LoginScreen(),


                                        ),

                                      )
                                        }
                                      });

                                    }

                                  },
                                  child: cubit.currentIndex < onBoardingList.length-1 ?Text(
                                    "Next",
                                    style: TextStyle(fontSize: 18.sp),
                                  ) : Text('Get Started',style: TextStyle(
                                    fontSize: 18.sp
                                  ),)
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
