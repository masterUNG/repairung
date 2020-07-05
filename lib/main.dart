import 'package:flutter/material.dart';
import 'package:repairung/pages/for_admin.dart';
import 'package:repairung/pages/for_techcial.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ForTechinal(),
    );
  }
}
