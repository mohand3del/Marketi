import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        border: Border.all(
          color: const Color(0xFFB2CCFF)
              .withOpacity(0.7), // Light blue color for all sides
          width: 1, // Adjust the width as needed
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Product Image
          SizedBox(
            width: 107.w,
            height: 108.h,
            child: Image.network(
              'https://m.media-amazon.com/images/I/71p-M3sPhhL._AC_SL1500_.jpg', // Replace with actual image URL
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 10),
          // Product Details
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Product Title
                    const Text(
                      'Labtop Dell',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),

                    const Icon(Icons.favorite_border_outlined, size: 20),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '84 Diapers',
                      style: TextStyle(
                        color: Color(0xff67687E),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    const Text(
                      'Price: 345.00 EGP',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.star,
                          size: 14.sp,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          '5.0',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 41.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9E6FF),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: IconButton(
                        icon: const FaIcon(FontAwesomeIcons.trashCan,
                            color: Colors.red),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 41.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9E6FF),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: IconButton(
                        icon: const FaIcon(FontAwesomeIcons.plus,
                            color: Color(0xff3F80FF)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
