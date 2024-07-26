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

const BoxDecoration commonButtonStyleRed = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(15)),
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(255, 123, 147, 1),
      Color.fromRGBO(250, 29, 29, 1),
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

const TextStyle newOrdersTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: 'Philosopher',
    color: Color.fromRGBO(59, 59, 59, 1));

const TextStyle ordersHeaderText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Philosopher',
    color: Color.fromRGBO(59, 59, 59, 1));

const TextStyle ordersTime = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: 'Philosopher',
    color: Color.fromRGBO(59, 59, 59, 1));

const TextStyle roomNumberInOrderDetails = TextStyle(
  fontFamily: 'Philosopher',
  fontSize: 16,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.5,
  height: 1.12,
);

const TextStyle roomTitleInOrderDetails = TextStyle(
  fontFamily: 'Philosopher',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.5,
  height: 1.12,
);

const TextStyle roomOrderHeaderDetails = TextStyle(
  fontFamily: 'Philosopher',
  fontSize: 12,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.5,
  height: 1.12,
);

const TextStyle roomTimesDetails = TextStyle(
  fontFamily: 'Philosopher',
  fontSize: 11,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.5,
  height: 1.12,
);

const TextStyle buttonTextDetails = TextStyle(
  fontFamily: 'Philosopher',
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.5,
  height: 1.12,
);

// const BoxDecoration agreeButtonDetails = BoxDecoration(
//   padding: EdgeInsets.symmetric(
//       horizontal: 40, vertical: 20), // Отступы внутри кнопки
// );

