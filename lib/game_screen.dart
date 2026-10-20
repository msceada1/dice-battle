import 'dart:math';

import 'package:flutter/material.dart';

import 'app_texts.dart';
import 'result_screen.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final Random _random = Random();//preguntar
  String _name = '';
  int _lastDie = 0;
  int _total = 0;
  int _contador = 0;

  bool get _hasName => _name.trim().isNotEmpty;

  void _roll() {
    if (!_hasName) return;
    setState(() {
      _lastDie = _random.nextInt(6) + 1;
      _total += _lastDie;
      _contador++;
    });
  }

  void _finish() {
    if (!_hasName) return;
    FocusScope.of(context).unfocus();
    Navigator.of(context).push<void>(
      MaterialPageRoute<void>(
        builder: (context) =>
        //se trnasfieren los datos a la clase ResultScreen
            ResultScreen(playerName: _name.trim(), total: _total, contador: _contador),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppTexts.title)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      labelText: AppTexts.nameLabel,
                      helperText: AppTexts.nameHelp,
                      helperMaxLines: 3,
                    ),
                    onChanged: (value) => setState(() => _name = value),
                  ),
                  const SizedBox(height: 24),
                  Text(AppTexts.lastDie(_lastDie)),
                  const SizedBox(height: 12),
                  Text(AppTexts.total(_total)),
                  const SizedBox(height: 24),
                  Text(AppTexts.contador(_contador)),
                  const SizedBox(height: 24),
                  FilledButton(
                    onPressed: _hasName ? _roll : null,
                    child: const Text(AppTexts.roll),
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: _hasName ? _finish : null,
                    child: const Text(AppTexts.finish),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
