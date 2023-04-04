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
class RecommendModel {
  String title;
  String score;
  String subTitle;
  String img;
  String author;
  String authorImg;
  String type;

  factory RecommendModel.fromJson(Map<String, dynamic> json) =>
      _$RecommendModelFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendModelToJson(this);

  RecommendModel(this.title, this.score, this.subTitle, this.img, this.author,
      this.authorImg, this.type);

  static List<RecommendModel> genFake() {
    return [
      RecommendModel(
          "单田芳代表作|引人入胜的侠客江湖",
          "8.9",
          "单田芳代表作|引人入胜的侠客江湖",
          "https://imagev2.xmcdn.com/group47/M05/53/60/wKgKk1ufEHXxZnLQAAKdqZFMMEU542.jpg",
          "单田芳评书",
          "https://imagev2.xmcdn.com/group1/M00/00/2E/wKgDrVCIoM3Sa9SCAAQJstX27gg351.jpg",
          "相声"),
      RecommendModel(
          "龙虎风云会 | 单田芳经典",
          "8.9",
          "宋代风云际会，续热血沸腾的江山争霸",
          "https://imagev2.xmcdn.com/storages/7078-audiofreehighqps/6D/8F/GKwRIDoFdLgCAALepwD7BU-I.jpg",
          "单田芳评书",
          "https://imagev2.xmcdn.com/group1/M00/00/2E/wKgDrVCIoM3Sa9SCAAQJstX27gg351.jpg",
          "相声"),
      RecommendModel(
          "贫道遇到了和尚",
          "8.0",
          "唐僧转世啦，跟道士一块修电脑",
          "https://imagev2.xmcdn.com/storages/a1ce-audiofreehighqps/A1/F1/CMCoOSQDX_nzAADB8ABd2nS6.jpg",
          "幻樱空",
          "https://imagev2.xmcdn.com/storages/4865-audiofreehighqps/B8/7A/GKwRIMAGUnEuAAMlWQFQ6ZIS.jpg",
          "有声书"),
      RecommendModel(
          "单田芳代表作|引人入胜的侠客江湖",
          "8.9",
          "单田芳代表作|引人入胜的侠客江湖",
          "https://imagev2.xmcdn.com/group47/M05/53/60/wKgKk1ufEHXxZnLQAAKdqZFMMEU542.jpg",
          "单田芳评书",
          "https://imagev2.xmcdn.com/group1/M00/00/2E/wKgDrVCIoM3Sa9SCAAQJstX27gg351.jpg",
          "相声"),
      RecommendModel(
          "龙虎风云会 | 单田芳经典",
          "8.9",
          "宋代风云际会，续热血沸腾的江山争霸",
          "https://imagev2.xmcdn.com/storages/7078-audiofreehighqps/6D/8F/GKwRIDoFdLgCAALepwD7BU-I.jpg",
          "单田芳评书",
          "https://imagev2.xmcdn.com/group1/M00/00/2E/wKgDrVCIoM3Sa9SCAAQJstX27gg351.jpg",
          "相声"),
      RecommendModel(
          "贫道遇到了和尚",
          "8.0",
          "唐僧转世啦，跟道士一块修电脑",
          "https://imagev2.xmcdn.com/storages/a1ce-audiofreehighqps/A1/F1/CMCoOSQDX_nzAADB8ABd2nS6.jpg",
          "幻樱空",
          "https://imagev2.xmcdn.com/storages/4865-audiofreehighqps/B8/7A/GKwRIMAGUnEuAAMlWQFQ6ZIS.jpg",
          "有声书"),
      RecommendModel(
          "单田芳代表作|引人入胜的侠客江湖",
          "8.9",
          "单田芳代表作|引人入胜的侠客江湖",
          "https://imagev2.xmcdn.com/group47/M05/53/60/wKgKk1ufEHXxZnLQAAKdqZFMMEU542.jpg",
          "单田芳评书",
          "https://imagev2.xmcdn.com/group1/M00/00/2E/wKgDrVCIoM3Sa9SCAAQJstX27gg351.jpg",
          "相声"),
      RecommendModel(
          "龙虎风云会 | 单田芳经典",
          "8.9",
          "宋代风云际会，续热血沸腾的江山争霸",
          "https://imagev2.xmcdn.com/storages/7078-audiofreehighqps/6D/8F/GKwRIDoFdLgCAALepwD7BU-I.jpg",
          "单田芳评书",
          "https://imagev2.xmcdn.com/group1/M00/00/2E/wKgDrVCIoM3Sa9SCAAQJstX27gg351.jpg",
          "相声"),
      RecommendModel(
          "贫道遇到了和尚",
          "8.0",
          "唐僧转世啦，跟道士一块修电脑",
          "https://imagev2.xmcdn.com/storages/a1ce-audiofreehighqps/A1/F1/CMCoOSQDX_nzAADB8ABd2nS6.jpg",
          "幻樱空",
          "https://imagev2.xmcdn.com/storages/4865-audiofreehighqps/B8/7A/GKwRIMAGUnEuAAMlWQFQ6ZIS.jpg",
          "有声书"),
    ];
  }
}

@JsonSerializable()
class ClassificationModel {
  String key;
  String display;

  ClassificationModel(this.key, this.display);

  factory ClassificationModel.fromJson(Map<String, dynamic> json) =>
      _$ClassificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClassificationModelToJson(this);

  static List<ClassificationModel> genFake() {
    return [
      ClassificationModel("recommend", "推荐"),
      ClassificationModel("novel", "有声小说"),
      ClassificationModel("logic", "逻辑思维"),
      ClassificationModel("hot", "热门🔥"),
      ClassificationModel("update", "提升自我"),
    ];
  }
}
