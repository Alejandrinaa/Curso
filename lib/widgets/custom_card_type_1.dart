import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.accessibility_rounded,
              color: AppTheme.primary,
            ),
            title: Text('¡Tituloo!'),
            subtitle: Text(
                'Irure consectetur nulla exercitation minim quis incididunt consequat anim anim dolore ea. Velit mollit anim cillum sunt ipsum. Nulla irure anim enim officia ad id ullamco laboris ex laboris laboris in occaecat aute. Anim excepteur est laboris do. Anim nulla culpa reprehenderit et ullamco aliqua non. Cillum aliqua exercitation occaecat laboris. Ipsum cillum ut commodo.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
