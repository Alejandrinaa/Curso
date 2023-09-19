import 'dart:io';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  //Cuadro de dialogo de IOS
  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: const Column(mainAxisSize: MainAxisSize.min, children: [
              Text('Contenido de alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Ok',
                    style: TextStyle(color: AppTheme.primary),
                  ))
            ],
          );
        });
  }

//Cuadro de dialogo de Android
  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20)),
            content: const Column(mainAxisSize: MainAxisSize.min, children: [
              Text('Contenido de alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Ok',
                    style: TextStyle(color: AppTheme.primary),
                  ))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.add_alert_rounded, // Color del icono
                    ),
                    SizedBox(width: 8.0), // Espacio entre el icono y el texto
                    Text(
                      "Alerta",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              // onPressed: () => displayDialogAndroid(context)
              //!Platform muestra el dialogo de IOS y Sin el '!' el de Android
              onPressed: () => !Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
