import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/api/api_manager/model/news_response/Articles.dart';

class NewsItemWidget extends StatelessWidget {
   NewsItemWidget({super.key , required this.articles});
 Articles articles ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
              child:Container()
              // CachedNetworkImage(
              //     imageUrl: articles.urlToImage ?? '',
              //     errorWidget: (context, url, error) => const Center(child: Icon(Icons.error),),
              //     placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
              // )
          ),
          const SizedBox(height: 3,),
          Text(
            articles.title ?? '',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              color: Color(0xFF79828B)
            ),
          ),
          const SizedBox(height: 3,),
          Text(
              articles.description ?? '',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xFF42505C)
            ),
          ),
          const SizedBox(height: 3,),
          Row(
            children: [
              Spacer(),
              Text(
                articles.publishedAt ?? '',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Color(0xFFA3A3A3)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
