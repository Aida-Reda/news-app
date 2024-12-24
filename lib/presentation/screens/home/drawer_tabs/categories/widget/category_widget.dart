import 'package:flutter/material.dart';
import 'package:news_app/core/utils/utils.dart';
import 'package:news_app/data_model/category_DM.dart';

import '../../../../../../config/theme/app_styles.dart';


class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key,required this.index,required this.categoryDM});
  final CategoryDM categoryDM;
  final int index ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: categoryDM.bgColor,
        borderRadius: BorderRadius.only(
          topRight: const Radius.circular(25),
          topLeft: const Radius.circular(25),
          bottomLeft: Radius.circular(index.isEven? 25 : 0),
          bottomRight: Radius.circular(index.isEven? 0 : 25)
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
              getFullPathImage(imageName: categoryDM.imageName),
              width: 142,
              height: 126,
          ),
          Text(
            categoryDM.title,
            style: AppStyles.categoryTitle,
          ),
        ],
      ),
    );
  }
}
