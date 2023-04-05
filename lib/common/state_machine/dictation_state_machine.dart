import '../../models/g_response.dart';

class DictationStateMachine {
  static DictationStateMachine? _instance;

  DictationStateMachine._internal();

  // 工厂构造函数
  factory DictationStateMachine() {
    _instance ??= DictationStateMachine._internal();

    return _instance!;
  }

  List<Dict> _words = [];

  bool checkIn(Dict word) {
    var result = false;

    _words.forEach((element) {
      if (element.id == word.id) {
        result = true;
      }
    });

    return result;
  }

  add(Dict word) {
    del(word);
    _words.add(word);
    // print(_words.length);
  }

  del(Dict word) {
    _words.removeWhere((element) {
      if (element.id == word.id) {
        return true;
      }

      return false;
    });
  }

  List<Dict> words() {
    return _words;
  }

  empty() {
    _words.clear();
  }
}
