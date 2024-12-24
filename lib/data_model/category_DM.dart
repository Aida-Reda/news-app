import 'dart:ui';

import 'package:news_app/core/utils/colors_manager.dart';
import 'package:news_app/core/utils/constant_manager.dart';
import 'package:news_app/core/utils/strings_manager.dart';
import 'package:news_app/core/utils/utils.dart';

class CategoryDM{
   String title ;
   String backendId ;
   String imageName ;
   Color bgColor ;
   CategoryDM({
     required this.title,
     required this.backendId,
     required this.imageName,
     required this.bgColor
});

  static List<CategoryDM> getCategoryList() => [
    CategoryDM(
   title: StringsManager.sports,
   backendId: ConstantManager.sportsBakEndId,
   imageName:'ball.png',
   bgColor: ColorsManager.red
   ),
    CategoryDM(
       title: StringsManager.general,
       backendId: ConstantManager.generalBakEndId,
       imageName: 'Politics.png',
       bgColor: ColorsManager.darkBlue
   ),
    CategoryDM(
        title: StringsManager.health,
        backendId: ConstantManager.healthBakEndId,
        imageName: 'health.png',
        bgColor: ColorsManager.pink
    ),
    CategoryDM(
        title: StringsManager.business,
        backendId: ConstantManager.businessBakEndId,
        imageName: 'bussines.png',
        bgColor: ColorsManager.brown
    ),
    CategoryDM(
        title: StringsManager.entertainment,
        backendId: ConstantManager.entertainmentBakEndId,
        imageName: 'environment.png',
        bgColor: ColorsManager.blue
    ),
    CategoryDM(
        title: StringsManager.science,
        backendId: ConstantManager.scienceBakEndId,
        imageName: 'science.png',
        bgColor: ColorsManager.yellow
    ),
  ];





}