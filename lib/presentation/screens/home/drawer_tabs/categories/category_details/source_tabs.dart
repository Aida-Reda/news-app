import 'package:flutter/material.dart';
import 'package:news_app/data/api/api_manager/model/sources_response/Sources.dart';
import 'package:news_app/presentation/screens/home/drawer_tabs/categories/category_details/news_details.dart';
import 'package:news_app/presentation/screens/home/drawer_tabs/categories/widget/source_widget.dart';

class SourceTabs extends StatefulWidget {
  SourceTabs({super.key, required this.sourcesList});

  List<Source> sourcesList;

  @override
  State<SourceTabs> createState() => _SourceTabsState();
}

class _SourceTabsState extends State<SourceTabs> {
  int tappedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.sourcesList.length,
            child: TabBar(
              onTap: (index){
                tappedIndex = index ;
                setState(() {

                });
              },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.start,
                tabs: widget.sourcesList
                    .map(
                      (source) => SourceWidget(
                        isSelected: widget.sourcesList.indexOf(source) == tappedIndex ,
                        source: source
                        ,),
                    )
                    .toList())),
        NewsDetails(source: widget.sourcesList[tappedIndex])
      ],
    );
  }
}
