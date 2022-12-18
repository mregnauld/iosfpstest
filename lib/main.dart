import 'package:flutter/material.dart';
import 'package:iosfpstest/routes_manager.dart';


void main() => runApp(const IOSFPSTestApp());

class IOSFPSTestApp extends StatelessWidget
{
  const IOSFPSTestApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      initialRoute: RoutesManager.comptesPage,
      onGenerateRoute: RoutesManager.genererRoute,
    );
  }
}
