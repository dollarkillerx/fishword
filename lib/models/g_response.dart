import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'g_response.g.dart';

@JsonSerializable()
class GResponse {
  List<GError>? errors;
  Map<String, dynamic> data;

  // 固定格式，不同的类使用不同的mixin即可
  // 这里声明一个工厂构造方法
  factory GResponse.fromJson(Map<String, dynamic> json) =>
      _$GResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GResponseToJson(this);

  GResponse(this.errors, this.data);

  GErrorItem? GetError() {
    if (errors == null || errors?.length == 0) {
      return null;
    }

    GErrorItem? errMsg;

    errors?.forEach((element) {
      var msg = element.message.substring(element.message.indexOf('{'));

      errMsg = GErrorItem.fromJson(jsonDecode(msg));
    });

    return errMsg;
  }

  Map<String, dynamic>? GetData() {
    if (data == null) {
      return null;
    }

    Map<String, dynamic>? result;

    data.forEach((key, value) {
      result = value;
    });

    return result;
  }
}

@JsonSerializable()
class GError {
  String message;
  List<String> path;

  GError(this.message, this.path);

  // 固定格式，不同的类使用不同的mixin即可
  // 这里声明一个工厂构造方法
  factory GError.fromJson(Map<String, dynamic> json) => _$GErrorFromJson(json);

  Map<String, dynamic> toJson() => _$GErrorToJson(this);
}

@JsonSerializable()
class GErrorItem {
  String code;
  String message;

  GErrorItem(this.code, this.message);

  factory GErrorItem.fromJson(Map<String, dynamic> json) =>
      _$GErrorItemFromJson(json);

  Map<String, dynamic> toJson() => _$GErrorItemToJson(this);
}

@JsonSerializable()
class UserJWT {
  @JsonKey(name: 'userID')
  final String userId;
  @JsonKey(name: 'accessTokenString')
  final String accessToken;

  UserJWT(this.userId, this.accessToken);

  factory UserJWT.fromJson(Map<String, dynamic> json) =>
      _$UserJWTFromJson(json);

  Map<String, dynamic> toJson() => _$UserJWTToJson(this);
}

@JsonSerializable()
class Dicts {
  List<Dict> dicts;

  Dicts({required this.dicts});

  factory Dicts.fromJson(Map<String, dynamic> json) => _$DictsFromJson(json);

  Map<String, dynamic> toJson() => _$DictsToJson(this);
}

@JsonSerializable()
class Dict {
  int id;
  String word;
  String katakana;
  String audioUrl;
  List<Simple> simple;
  List<String> exampleSentences;

  Dict({
    required this.id,
    required this.word,
    required this.katakana,
    required this.audioUrl,
    required this.simple,
    required this.exampleSentences,
  });

  factory Dict.fromJson(Map<String, dynamic> json) => _$DictFromJson(json);

  Map<String, dynamic> toJson() => _$DictToJson(this);
}

@JsonSerializable()
class Simple {
  String attribute;
  List<String> explains;

  Simple({required this.attribute, required this.explains});

  factory Simple.fromJson(Map<String, dynamic> json) => _$SimpleFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleToJson(this);
}
