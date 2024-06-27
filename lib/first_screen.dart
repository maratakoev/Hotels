import 'package:flutter/material.dart';
import 'package:hotels/second_screen.dart';
import 'styles.dart';

void main() {
  runApp(const Hotels());
}

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hotels_App',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 253, 255, 1),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 102),
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 60),
            Image.asset('assets/images/imagefirst.png'),
            const SizedBox(height: 102),
            const TitleFirst(),
            const SizedBox(height: 102),
            const Button()
          ],
        ),
      ),
    );
  }
}

class TitleFirst extends StatelessWidget {
  const TitleFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 297,
      child: Text(
        'Заказывайте услуги отеля из любого места онлайн',
        textAlign: TextAlign.center,
        softWrap: true,
        style: commonTextStyle,
      ),
    );
  }
}

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 57,
      decoration: commonButtonStyle,
      child: TextButton(
          style: const ButtonStyle(
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))))),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SecondScreen()));
          },
          child: const Text('Понятно', style: buttonTextStyle)),
    );
  }
}
