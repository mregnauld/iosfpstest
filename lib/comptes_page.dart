import 'package:flutter/material.dart';
import 'package:iosfpstest/routes_manager.dart';

class ComptesPage extends StatelessWidget
{
  const ComptesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFF7070),
        child: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () => Navigator.of(context).pushNamed(RoutesManager.clePage),
              child: Container(
                color: const Color(0xFF2B99D9),
                padding: const EdgeInsets.all(16),
                child: const Text(
                  "TEST",
                  style: TextStyle(
                    color: Color(0xFF202020),
                    fontSize: 32,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
