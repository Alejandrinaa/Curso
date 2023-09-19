import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class CalendarioScreen extends StatelessWidget {
  const CalendarioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Center(
          child: CalendarioDataPiker(),
        ),
      ),
    );
  }
}
