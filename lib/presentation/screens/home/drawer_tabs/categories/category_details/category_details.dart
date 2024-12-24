import 'package:flutter/material.dart';
import 'package:news_app/data/api/api_manager/api_manager.dart';
import 'package:news_app/data_model/category_DM.dart';
import 'package:news_app/presentation/screens/home/drawer_tabs/categories/category_details/source_tabs.dart';

class CategoryDetails extends StatelessWidget {
   CategoryDetails({super.key , required this.categoryDM});
 CategoryDM categoryDM ;
  @override
  Widget build(BuildContext context) {
    print(categoryDM.title);
    return FutureBuilder(future: ApiManager.getSources(categoryId: categoryDM.backendId),
      builder: (context,  snapshot) {
         if(snapshot.connectionState == ConnectionState.waiting)
           {
             return const Center(child: CircularProgressIndicator());
           }
         if(snapshot.data?.status == 'error' || snapshot.hasError)
           {
             return Center(
               child: Text(
                 snapshot.data!.message ?? snapshot.error.toString()
               ),
             );
           }
         var sourcesList= snapshot.data?.sources ?? [];
         return SourceTabs(sourcesList: sourcesList,);

      },

    );
  }
}
