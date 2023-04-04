// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'g_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GResponse _$GResponseFromJson(Map<String, dynamic> json) => GResponse(
      (json['errors'] as List<dynamic>?)
          ?.map((e) => GError.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$GResponseToJson(GResponse instance) => <String, dynamic>{
      'errors': instance.errors,
      'data': instance.data,
    };

GError _$GErrorFromJson(Map<String, dynamic> json) => GError(
      json['message'] as String,
      (json['path'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$GErrorToJson(GError instance) => <String, dynamic>{
      'message': instance.message,
      'path': instance.path,
    };

GErrorItem _$GErrorItemFromJson(Map<String, dynamic> json) => GErrorItem(
      json['code'] as String,
      json['message'] as String,
    );

Map<String, dynamic> _$GErrorItemToJson(GErrorItem instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

RecommendModel _$RecommendModelFromJson(Map<String, dynamic> json) =>
    RecommendModel(
      json['title'] as String,
      json['score'] as String,
      json['subTitle'] as String,
      json['img'] as String,
      json['author'] as String,
      json['authorImg'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$RecommendModelToJson(RecommendModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'score': instance.score,
      'subTitle': instance.subTitle,
      'img': instance.img,
      'author': instance.author,
      'authorImg': instance.authorImg,
      'type': instance.type,
    };

ClassificationModel _$ClassificationModelFromJson(Map<String, dynamic> json) =>
    ClassificationModel(
      json['key'] as String,
      json['display'] as String,
    );

Map<String, dynamic> _$ClassificationModelToJson(
        ClassificationModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'display': instance.display,
    };
