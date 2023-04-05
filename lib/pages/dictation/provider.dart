import '../../common/library/base_provider.dart';

class DictationProvider extends BaseProvider {
  dictById() => gQuery(graphSQL: dictByIdSQL);
}

var dictByIdSQL = '''
query dictById(\$wordID: Int64!) {
  dictById(wordId: \$wordID) {
      id
      word
      katakana
      audioUrl
      simple{
        attribute
        explains
      }
      exampleSentences
  }
}
''';
