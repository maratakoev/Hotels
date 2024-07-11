import 'package:flutter/material.dart';
import 'styles.dart';

class DoneOrdersScreen extends StatelessWidget {
  const DoneOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(250, 253, 255, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 16),
            const TitleDoneOrders(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class TitleDoneOrders extends StatelessWidget {
  const TitleDoneOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 297,
      child: Text(
        'Завершенные',
        textAlign: TextAlign.center,
        softWrap: true,
        style: newOrdersTitle,
      ),
    );
  }
}
