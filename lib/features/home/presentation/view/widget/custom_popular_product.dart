import 'package:flutter/material.dart';
import 'package:marketi/features/home/presentation/view/widget/build_item.dart';


class CustomPopularProduct extends StatelessWidget {
  const CustomPopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Popular Product',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text('View all'),
            ),
          ],
        ),
        SizedBox(
          height: 166,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index)=>const BuildItem(),
            separatorBuilder: (context,index)=>const SizedBox(
              width: 16,
            ),
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}
