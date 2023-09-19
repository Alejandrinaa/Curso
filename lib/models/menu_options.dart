import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  // obligar a utilizar todas las propiedades de la clase con required
  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
