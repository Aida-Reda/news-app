import 'package:flutter/material.dart';
import 'package:news_app/config/theme/app_theme.dart';
import 'package:news_app/data/api/api_manager/model/sources_response/Sources.dart';

class SourceWidget extends StatelessWidget {
   SourceWidget({super.key,required this.isSelected,required this.source});
 bool isSelected  ;
 Source source ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: isSelected == true ? AppTheme.lightPrimary : Colors.transparent,
         borderRadius: BorderRadius.circular(25),
        border: Border.all(
            color: AppTheme.lightPrimary,
            width: 2
        ),
      ),
      child: Text(
        source.name ?? "",
        style: TextStyle(
          color: isSelected? Colors.white :  AppTheme.lightPrimary ,
          fontWeight: FontWeight.w400
        ),
      ),
    );
  }
}
