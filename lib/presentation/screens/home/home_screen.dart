import 'package:flutter/material.dart';
import 'package:news_app/data_model/category_DM.dart';
import 'package:news_app/presentation/screens/home/drawer_tabs/categories/categories.dart';
import 'package:news_app/presentation/screens/home/drawer_tabs/categories/category_details/category_details.dart';
import 'package:news_app/presentation/screens/home/drawer_tabs/setting/setting.dart';
import 'package:news_app/presentation/screens/home/home_drawer/home_drawer.dart';
import 'package:news_app/core/utils/utils.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});
 static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    selectedTab = Categories(onCategoryItemClicked: onCategoryItemClicked);
    super.initState();
  }
  late Widget selectedTab;
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            getFullPathImage(imageName:'bg_pattern.png'),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: const Text(
                'News App'
            ),
          ),
          drawer: HomeDrawer(onMenuItemClicked: onMenuItemClicked,),
          body: selectedTab,
        )
      ],
    );
  }

  onMenuItemClicked(MenuItems item) {
    switch(item)
        {
      case MenuItems.categories : selectedTab =  Categories(onCategoryItemClicked: onCategoryItemClicked,);
      case MenuItems.settings : selectedTab = const Settings();
        }
    Navigator.pop(context);
        setState(() {
        });
  }
  onCategoryItemClicked(CategoryDM category){
    selectedTab =  CategoryDetails(categoryDM: category,);
    setState(() {

    });
  }
}
