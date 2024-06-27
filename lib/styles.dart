import 'package:flutter/material.dart';

const TextStyle commonTextStyle = TextStyle(
    fontSize: 24,
    fontFamily: 'Philosopher',
    color: Color.fromRGBO(59, 59, 59, 1));

const firstButton = ButtonStyle(
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)))));

const TextStyle buttonTextStyle = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontFamily: 'Philosopher',
    fontWeight: FontWeight.w700);

const BoxDecoration commonButtonStyle = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(15)),
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(83, 232, 139, 1),
      Color.fromRGBO(21, 190, 119, 1),
    ],
  ),
);

const TextStyle dropDownButtonText = TextStyle(
  fontFamily: 'Philosopher',
  fontSize: 14,
  letterSpacing: 0.5,
  fontWeight: FontWeight.w400,
  color: Color.fromRGBO(59, 59, 59, 1),
);
