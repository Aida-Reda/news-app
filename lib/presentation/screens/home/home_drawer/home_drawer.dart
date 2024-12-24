import 'package:flutter/material.dart';

import '../../../../config/theme/app_styles.dart';
 typedef OnMenuItemClicked = void Function(MenuItems item);
 enum MenuItems{
   categories,
   settings
 }
class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key,required this.onMenuItemClicked});
final OnMenuItemClicked onMenuItemClicked;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              //height: MediaQuery.of(context).size.height*.2,
              child: const Center(
                child: Text(
                  'News App !',
                  style: AppStyles.drawerTitle
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        onMenuItemClicked(MenuItems.categories);
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.menu_rounded,size: 32,),
                          SizedBox(width: 8,),
                          Text(
                            'Categories',
                            style: AppStyles.drawerItem
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8,),
                     InkWell(
                       onTap: (){
                         onMenuItemClicked(MenuItems.settings);
                       },
                       child: const Row(
                        children: [
                          Icon(Icons.settings_rounded,size: 32,),
                          SizedBox(width: 8,),
                          Text(
                            'Settings',
                            style: AppStyles.drawerItem
                          ),
                        ],
                                           ),
                     )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
