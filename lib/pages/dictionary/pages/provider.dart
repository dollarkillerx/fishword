
import '../../../common/library/base_provider.dart';

class DictionaryDetailsProvider extends BaseProvider {
  dict(String world) => gQuery(graphSQL: dictSQL, variables: {
        'world': world,
      });
}

var dictSQL = '''
query dict(\$world: String!) {
  dict(word: \$world) {
    dicts{
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
}

''';
