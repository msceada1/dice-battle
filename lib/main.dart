import 'package:flutter/material.dart';

import 'app_texts.dart';
import 'game_screen.dart';

void main() => runApp(const DiceBattleApp());

class DiceBattleApp extends StatelessWidget {
  const DiceBattleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTexts.title,
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const GameScreen(),
    );
  }
}
