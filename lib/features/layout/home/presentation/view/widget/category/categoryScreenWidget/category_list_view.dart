
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/data/model/categories_response_body.dart';

import 'cotegory_item_widget.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, this.listOfCategories});
  final List<ListOfCategories>? listOfCategories;



  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,

        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(    crossAxisCount: 2,

          childAspectRatio: 1.1.h,
        ),
        itemBuilder: (context, index) {
          return  CategoryItemWidget(listOfCategories: listOfCategories![index],);
        },
        itemCount: listOfCategories?.length,
      ),
    );
  }
}
