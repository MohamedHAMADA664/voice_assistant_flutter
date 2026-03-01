import 'package:flutter/material.dart';
import 'services/tts_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TTSService tts = TTSService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voice Assistant',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Voice Assistant'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              await tts.speak("مرحبا، التطبيق يعمل بنجاح");
            },
            child: Text("اختبار الصوت"),
          ),
        ),
      ),
    );
  }
}
