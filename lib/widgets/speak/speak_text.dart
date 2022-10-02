import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

/*
set minsdk manually
flutter clean
flutter pub get
android -> app -> src -> main -> AndroidManifest.xml
* add these lined above application in AndroidManifest.xml
    <queries>
         <intent>
            <action android:name="android.intent.action.TTS_SERVICE" />
         </intent>
    </queries>

    then rerun app
* */
class SpeakTextWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  final double iconSize;

  SpeakTextWidget(
      {super.key,
      required this.text,
      this.icon = Icons.play_circle_outline_outlined,
      this.iconColor = Colors.orange,
      this.iconSize = 40,
      });

  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController controller = TextEditingController();

  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1); //0.5 to 1.5
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
      onPressed: () => speak(text),
    );
  }
}
