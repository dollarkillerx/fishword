import '../../common/library/base_provider.dart';

class HomeProvider extends BaseProvider {
  userRegistration(String os, String token, String deviceName, String deviceId,
          String appId) =>
      gMutate(graphSQL: userRegistrationSQL, variables: {
        "os": os,
        "token": token,
        "deviceName": deviceName,
        "deviceId": deviceId,
        "appId": appId,
      });

  nodeToken(String nodeId, {String? mountToken}) =>
      gQuery(graphSQL: nodeTokenSQL, variables: {
        "nodeId": nodeId,
        "mountToken": mountToken,
      });

  flushJWT(String appVersion) => gQuery(graphSQL: flushJWTSQL, variables: {
    "appVersion": appVersion,
  });
}

var userRegistrationSQL = '''
mutation userRegistration(\$os: OS!, \$token: String!, \$deviceName: String!, \$deviceId: String!, \$appId: String!) {
  userRegistration(input: {
    captchaId: "",
    captchaCode: "",
    os: \$os,
    token: \$token,
    deviceName: \$deviceName,
    deviceId: \$deviceId,
    appId: \$appId,
  }) {
    accessTokenString
  }
}
''';

var nodeTokenSQL = '''
query nodeToken(\$nodeId: String!, \$mountToken: String) {
  nodeToken(nodeId: \$nodeId, mountToken: \$mountToken) {
    internetAddress
    nodeProtocol
    wsPath
    token
  }
}
''';

var flushJWTSQL = '''
query flushJWT(\$appVersion: String!) {
  flushJWT(appVersion: \$appVersion) {
    accessTokenString
  }
}
''';