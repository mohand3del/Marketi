import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/auth/login/view/widget/custom_bottom.dart';
import 'package:marketi/features/layout/cart/presentation/view/widget/cart_item.dart';
import 'package:marketi/features/layout/cart/presentation/view/widget/cart_list_item.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/custom_app_bar.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/custom_app_bar_two.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
        ),
        child: Column(
          children: [
            CustomBar(title: "Cart"),
            SizedBox(
              height: 14.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Products On Cart',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            const CartListItem(),
            Container(
              height: 107.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xffB2CCFF).withOpacity(0.1),
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      children: [
                        Text(
                          'Suptotal(3 items)',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        Spacer(),
                        Text(
                          'EGP 1,120,00',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: CustomBottom(text: "Checkout", onPressed: () {})),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
