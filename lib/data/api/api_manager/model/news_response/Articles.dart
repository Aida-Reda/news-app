
import '../sources_response/Sources.dart';

/// source : {"id":"wired","name":"Wired"}
/// author : "Makena Kelly, Joel Khalili"
/// title : "The Crypto Industry Is Helping Trump Pick SEC Chair"
/// description : "The president-elect's transition team is consulting with industry leaders as it vets potential replacements for outgoing chair Gary Gensler, sources tell WIRED."
/// url : "https://www.wired.com/story/crypto-candidates-front-runners-sec-race/"
/// urlToImage : "https://media.wired.com/photos/6745db10e149b18ca8e2b8d8/191:100/w_1280,c_limit/GettyImages-93181618.jpg"
/// publishedAt : "2024-11-26T16:23:34Z"
/// content : "In July, at a bitcoin conference in Nashville, Tennessee, Trump pledged to fire Gensler if reelected, drawing perhaps the most raucous applause of the night. I will appoint an SEC chair who will buil… [+2635 chars]"

class Articles {

  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles({
      this.source, 
      this.author, 
      this.title, 
      this.description, 
      this.url, 
      this.urlToImage, 
      this.publishedAt, 
      this.content,});

  Articles.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }


Articles copyWith({  Source? source,
  String? author,
  String? title,
  String? description,
  String? url,
  String? urlToImage,
  String? publishedAt,
  String? content,
}) => Articles(  source: source ?? this.source,
  author: author ?? this.author,
  title: title ?? this.title,
  description: description ?? this.description,
  url: url ?? this.url,
  urlToImage: urlToImage ?? this.urlToImage,
  publishedAt: publishedAt ?? this.publishedAt,
  content: content ?? this.content,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }

}