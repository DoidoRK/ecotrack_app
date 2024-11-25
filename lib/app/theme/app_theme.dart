import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: const Color(0xFF1A8300),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1A8300),
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 48,
      fontFamily: 'Alata',
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 48,
    ),
    toolbarHeight: 160,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF1A8300),
    selectedItemColor: Colors.white,
    selectedLabelStyle: TextStyle(
      fontFamily: 'Alata',
      color: Colors.white,
    ),
    unselectedItemColor: Colors.white38,
    unselectedLabelStyle: TextStyle(
      fontFamily: 'Alata',
      color: Colors.white38,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.accent,
  ),
  inputDecorationTheme:  InputDecorationTheme(
    suffixIconColor: const Color(0xFF1A8300),
    labelStyle: const TextStyle(
      fontFamily: 'Alata',
      color: Color(0xFF1A8300),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xFF1A8300),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xFF1A8300),
      ),
    ),
  ),
  filledButtonTheme: const FilledButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(TextStyle(
        color: Colors.white,
        fontFamily: 'Alata',
      )),
      foregroundColor: WidgetStatePropertyAll(Color(0xFF1A8300)),
    ),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontFamily: 'Alata',
      color: Color(0xFF1A8300),
    ),
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: Color(0xFF1A8300),
    titleTextStyle: TextStyle(
      fontFamily: 'Alata',
      color: Color(0xFF1A8300),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: WidgetStateBorderSide.resolveWith(
      (states) => const BorderSide(
        color: Color(0xFF1A8300),
      ),
    ),
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return const Color(0xFF1A8300); // Preenchimento quando selecionado
        }
        return Colors.white; // Fundo quando não selecionado
      },
    ),
    checkColor: WidgetStateProperty.all(Colors.white), // Cor do ícone de seleção (tick)
  ),
  expansionTileTheme: const ExpansionTileThemeData(
    textColor: Color(0xFF1A8300),
    collapsedTextColor: Color(0xFF1A8300),
    iconColor: Color(0xFF1A8300),
    collapsedIconColor: Color(0xFF1A8300),
  ),
  dividerColor: const Color(0xFF1A8300),
);