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

UserJWT _$UserJWTFromJson(Map<String, dynamic> json) => UserJWT(
      json['userID'] as String,
      json['accessTokenString'] as String,
    );

Map<String, dynamic> _$UserJWTToJson(UserJWT instance) => <String, dynamic>{
      'userID': instance.userId,
      'accessTokenString': instance.accessToken,
    };

Dicts _$DictsFromJson(Map<String, dynamic> json) => Dicts(
      dicts: (json['dicts'] as List<dynamic>)
          .map((e) => Dict.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DictsToJson(Dicts instance) => <String, dynamic>{
      'dicts': instance.dicts,
    };

Dict _$DictFromJson(Map<String, dynamic> json) => Dict(
      id: json['id'] as int,
      word: json['word'] as String,
      katakana: json['katakana'] as String,
      audioUrl: json['audioUrl'] as String,
      simple: (json['simple'] as List<dynamic>)
          .map((e) => Simple.fromJson(e as Map<String, dynamic>))
          .toList(),
      exampleSentences: (json['exampleSentences'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DictToJson(Dict instance) => <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'katakana': instance.katakana,
      'audioUrl': instance.audioUrl,
      'simple': instance.simple,
      'exampleSentences': instance.exampleSentences,
    };

Simple _$SimpleFromJson(Map<String, dynamic> json) => Simple(
      attribute: json['attribute'] as String,
      explains:
          (json['explains'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SimpleToJson(Simple instance) => <String, dynamic>{
      'attribute': instance.attribute,
      'explains': instance.explains,
    };
