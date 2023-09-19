import 'package:flutter/material.dart';

class AppTheme {
  //Variables de colores de la aplicacion
  static const Color primary = Color.fromRGBO(13, 71, 161, 100);
  static const Color secondary = Color.fromRGBO(235, 120, 35, 90);
  static const Color disable = Color.fromRGBO(163, 161, 161, 0.651);

  //Estilos de botones primarios
  static ButtonStyle primaryButtons() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        // side: const BorderSide(color: secondary, width: 1),
      ),
      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      backgroundColor: const Color.fromRGBO(235, 120, 35, 90),
    ).copyWith(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return const Color.fromARGB(136, 235, 118, 35);
          }
          if (states.contains(MaterialState.focused)) {
            return primary;
          }
          if (states.contains(MaterialState.pressed)) {
            return primary;
          }
          return secondary;
        },
      ),
      side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return const BorderSide(color: primary, width: 1);
          }
          if (states.contains(MaterialState.focused)) {
            return const BorderSide(color: Colors.green, width: 1);
          }
          return const BorderSide(
              color: secondary); // Cambia esto a tu color de borde deseado
        },
      ),
    );
  }

//Estilos de botones secundarios
  static ButtonStyle secondaryButtons() {
    return ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: secondary, width: 1),
        ),
        foregroundColor: const Color.fromRGBO(235, 120, 35, 90),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255));
  }

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color.fromRGBO(13, 71, 161, 100),

    // Estilos del appBar
    appBarTheme: const AppBarTheme(color: primary, elevation: 3),
    // Estilos de boton de texto o terciarios
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
            const Color.fromRGBO(235, 120, 35, 90)),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return const Color.fromRGBO(235, 120, 35, 90).withOpacity(0.08);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return const Color.fromRGBO(235, 120, 35, 90).withOpacity(0.15);
            }
            return null; // Defer to the widget's default.
          },
        ),
      ),
    ),
    // Estilos de botones de icono o accion
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: secondary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(235, 120, 35, 90),
        shape: const StadiumBorder(),
      ),
    ),

    //Estilos de los inputs o TextFields
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: secondary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondary),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondary),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: disable),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        )),

    //Estilos del DatePicker
    datePickerTheme: const DatePickerThemeData(
      headerBackgroundColor: Color.fromRGBO(235, 120, 35, 90),
      shadowColor: primary,
    ),
  );
}
