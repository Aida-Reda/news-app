import 'package:flutter/material.dart';
import 'package:news_app/data_model/category_DM.dart';
import 'package:news_app/presentation/screens/home/drawer_tabs/categories/widget/category_widget.dart';
import '../../../../../config/theme/app_styles.dart';
typedef OnCategoryItemClicked  =  void Function(CategoryDM categoryDM) ;
class Categories extends StatelessWidget {

List<CategoryDM> categoryList = CategoryDM.getCategoryList();
OnCategoryItemClicked onCategoryItemClicked ;
  Categories({super.key, required this.onCategoryItemClicked});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width ;
    double height = MediaQuery.of(context).size.height ;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width*.065,
        vertical: height*.03
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pick your category\nof interest',
            style: AppStyles.picCategory,
          ),
          SizedBox(height: height*.01,),
          Expanded(
              child:GridView.builder(
                  itemCount:categoryList.length ,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 20
                  ),
                  itemBuilder: (context , index) => InkWell(
                    onTap: (){
                      onCategoryItemClicked(categoryList[index]);
                    },
                      child: CategoryWidget(index: index,categoryDM: categoryList[index],))
              )
          )
        ],
      ),
    );
  }
}
