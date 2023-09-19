import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.secondary,
                divisions: 10,
                value: _sliderValue,
                onChanged: _sliderEnable
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            /* Checkbox(
                value: _sliderEnable,
                onChanged: ((value) {
                  _sliderEnable = value ?? true;
                  setState(() {});
                })),


                 Switch(value: _sliderEnable, onChanged: (value) => setState(() {
                      _sliderEnable = value;
                    })),
                
                
                */
            CheckboxListTile(
                activeColor: AppTheme.secondary,
                title: const Text('Habilitar'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value ?? true;
                    })),
            SwitchListTile.adaptive(
                activeColor: AppTheme.secondary,
                title: const Text('Habilitar'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value;
                    })),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCJLhRCIz4ZyIRO5D7CNn-YbxkIBJXGIWuDw&usqp=CAU'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
