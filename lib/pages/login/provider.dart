import '../../common/library/base_provider.dart';

class LoginProvider extends BaseProvider {
  registry(String account, String password) =>
      gQuery(graphSQL: registrySQL, variables: {
        "account": account,
        "password": password,
        "name": account,
      });

  login(String account, String password) =>
      gQuery(graphSQL: loginSQL, variables: {
        "account": account,
        "password": password,
      });
}

var registrySQL = '''
mutation registry(\$account: String!, \$password: String!, \$name:String!) {
  registry(input: {
    account: \$account,
    password: \$password,
    name: \$name,
  }) {
    ok
  }
}
''';

var loginSQL = '''
mutation login(\$account: String!, \$password: String!) {
  loginByPassword(input: {
    account: \$account,
    password: \$password,
  }) {
    userID
    accessTokenString
  }
}
''';
