import 'package:flutter/material.dart';
import 'package:news_app/data/api/api_manager/api_manager.dart';
import 'package:news_app/data/api/api_manager/model/news_response/Articles.dart';
import 'package:news_app/data/api/api_manager/model/sources_response/Sources.dart';
import 'package:news_app/presentation/screens/home/drawer_tabs/categories/widget/news_item_widget.dart';

class NewsDetails extends StatelessWidget {
   NewsDetails({super.key , required this.source});
 Source source ;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getNews(source.id ?? ''),
        builder: (context , snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snapshot.hasError ){
            return Center(
              child: Text(
                snapshot.error.toString()
              ),
            );
          }
          List<Articles> news = snapshot.data?.articles ?? [];
          return Expanded(
            child: ListView.builder(
              itemCount: news.length,
                itemBuilder: (context , index) => NewsItemWidget(articles: news[index])
            ),
          );
        }
    );
  }
}
