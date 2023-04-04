import '../../common/library/base_provider.dart';

class DictionaryProvider extends BaseProvider {
  friendships() => gQuery(graphSQL: userListSQL);
}

var userListSQL = '''
query friendships {
  friendship {
    friendships {
      accountId
      account
      fullName
      nickName
      birthday
      email
      about
      avatar
    }
  }
}
''';
