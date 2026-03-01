import 'package:flutter_tts/flutter_tts.dart';

class TTSService {
  final FlutterTts flutterTts = FlutterTts();

  Future speak(String text) async {
    await flutterTts.setLanguage("ar");
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(text);
  }
}
