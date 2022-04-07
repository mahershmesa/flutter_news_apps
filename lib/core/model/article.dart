import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

// ignore: deprecated_member_use
@JsonSerializable(nullable:false)
class Article{

  Article();

@JsonKey(name:"author")
late String author;

@JsonKey(name:"title")
  late String title;

@JsonKey(name:"description")
late String desc;

@JsonKey(name:"url")
late String url;

@JsonKey(name:"urlToImage")
late String urlimage;

@JsonKey(name:"content")
late String content;

@JsonKey(name:"publishedAt")
late String publishedAt;

  DateTime? get getPublishedAtDate => DateTime.tryParse(publishedAt);


  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);

}