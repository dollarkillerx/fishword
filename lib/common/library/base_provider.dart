import 'dart:convert';
import 'package:get/get.dart';
import '../../models/g_response.dart';
import '../routers/app_routes.dart';
import 'graph_ql_client.dart';
import 'package:crypto/crypto.dart';

import 'local_storage.dart';

// const SERVER_API_URL = "http://192.168.31.66:8001";
const SERVER_API_URL = "https://fishword_api.dollarkiller.com";
const APPID = "80f8342f0487";
const APPVersion = 0.01;

class BaseProvider extends GetConnect implements IGraphQLClient {
  @override
  void onInit() {
    super.onInit();

    httpClient.baseUrl = SERVER_API_URL;

    // 请求拦截
    httpClient.addRequestModifier<void>((request) async {
      String? jwt = await LocalStorage.getJWT();
      request.headers['Authorization'] = jwt ?? '';
      String skey = "s" + "a" + "l" + "t";
      request.headers[skey] = md5
          .convert(utf8.encode(
              '${DateTime.now().millisecondsSinceEpoch ~/ 10000}-9776e538-59ba-473f-8ccf-1d72031e360f1'))
          .toString();

      return request;
    });

    // 响应拦截
    httpClient.addResponseModifier((request, response) {
      if (response.status.code! == 401) {
        LocalStorage.delJWT();
        Get.toNamed(AppRoutes.Login);
      }

      return response;
    });
  }

  @override
  Future<GResponse?> gMutate(
      {required String graphSQL, Map<String, dynamic>? variables}) async {
    Response resp = await post("/graphql", {
      "query": graphSQL,
      "variables": variables,
    });

    GResponse gResponse = GResponse.fromJson(resp.body);

    // 41001 auth
    if (gResponse.GetError() != null) {
      if (gResponse.GetError()?.code == "41001") {
        Get.toNamed(AppRoutes.Login);
      }
    }

    return gResponse;
  }

  @override
  Future<GResponse?> gQuery(
      {required String graphSQL, Map<String, dynamic>? variables}) async {
    Response resp = await post("/graphql", {
      "query": graphSQL,
      "variables": variables,
    });

    GResponse gResponse = GResponse.fromJson(resp.body);

    // 41001 auth
    if (gResponse.GetError() != null) {
      if (gResponse.GetError()?.code == "41001") {
        Get.toNamed(AppRoutes.Login);
      }
    }

    return gResponse;
  }

}

