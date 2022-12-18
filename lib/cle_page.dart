import 'package:flutter/material.dart';

class ClePage extends StatelessWidget
{
  const ClePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Container(
              color: const Color(0xFF2B99D9),
              padding: const EdgeInsets.all(16),
              child: const Text(
                "FERMER",
                style: TextStyle(
                  color: Color(0xFF202020),
                  fontSize: 32,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
