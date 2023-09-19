import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview tipo 2'),
          // estilos de appbar
        ),
        // separed es para poner una separación entre eleemtnos
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]), // se puede cambiar el color de icono
            trailing: const Icon(
              Icons.accessible_forward_outlined,
              color: Color.fromARGB(255, 71, 181, 63),
            ),
            // el on Tap tiene una función por eso da efecto ahi se especifica si
            // tendra el efecto solo cuando algo se cumpla
            onTap: () {
              final game = options[i];
              print(game);
            },
          ),
          // cuando no se usa un argumento se puede remplazar por un guion bajo o dos
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
