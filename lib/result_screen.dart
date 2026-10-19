import 'package:flutter/material.dart';

import 'app_texts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.playerName,//transferencia del nombre
    required this.total, //transferencia del total
  });

  final String playerName;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppTexts.result)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppTexts.player(playerName)),
              const SizedBox(height: 12),
              Text(AppTexts.total(total)),
              const SizedBox(height: 24),
              OutlinedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(AppTexts.back),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
