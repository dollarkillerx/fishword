import 'dart:io';

import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

import '../../common/state_machine/dictation_state_machine.dart';

class DictationController extends GetxController {
  List<String> optionsSequence = ['顺序', '乱序'];
  String selectedSequenceOption = '顺序';

  List<String> optionsPayNum = ['4', '3', '2', '1'];
  String selectedPayNumOption = '4';

  List<String> optionsSleepTime = ['6', '5', '4', '3'];
  String selectedSleepTimeOption = '4';

  toRefresh() {
    update();
  }

  payMusic() async {
    var pt = DictationStateMachine().words();
    var tc = int.parse(selectedPayNumOption);
    int sleepTime = int.parse(selectedSleepTimeOption);

    for (var idx = 0; idx < pt.length; idx++) {
      for (var i = 0; i < tc; i++) {
        var element = pt[idx];
        // print(element.audioUrl);

        final player = AudioPlayer(); // Create a player
        await player.setUrl(// Load a URL
            element.audioUrl); // Schemes: (https: | file: | asset: )
        await player.play();
        await player.dispose();

        await Future.delayed(Duration(seconds: sleepTime));
      }
    }
  }
}
