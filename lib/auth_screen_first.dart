import 'package:flutter/material.dart';
import 'package:hotels/auth_screen_second.dart';
import 'styles.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AuthScreenFirst extends StatelessWidget {
  const AuthScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(250, 253, 255, 1),
      body: Column(
        children: [
          SizedBox(height: 87),
          NameInput(),
          SizedBox(height: 24),
          SurnameInput(),
          SizedBox(height: 24),
          PhoneInput(),
          SizedBox(height: 24),
          AuthScreenText(),
          SizedBox(height: 24),
          Button()
        ],
      ),
    );
  }
}

class NameInput extends StatefulWidget {
  const NameInput({super.key});

  @override
  State<NameInput> createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 325,
        height: 57,
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              filled: true,
              fillColor: const Color.fromRGBO(255, 255, 255, 1),
              prefixIcon: Image.asset('assets/images/room.png'),
              hintText: 'Имя',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15), // Закругленные углы
                borderSide: const BorderSide(
                  color: Color.fromRGBO(244, 244, 244, 1), // Цвет обводки
                ),
              ),
              hintStyle: dropDownButtonText),
        ),
      ),
    );
  }
}

class SurnameInput extends StatefulWidget {
  const SurnameInput({super.key});

  @override
  State<SurnameInput> createState() => _SurnameInputState();
}

class _SurnameInputState extends State<SurnameInput> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 325,
        height: 57,
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: const Color.fromRGBO(255, 255, 255, 1),
              prefixIcon: Image.asset('assets/images/room.png'),
              hintText: 'Фамилия',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15), // Закругленные углы
                borderSide: const BorderSide(
                  color: Color.fromRGBO(244, 244, 244, 1), // Цвет обводки
                ),
              ),
              hintStyle: dropDownButtonText),
        ),
      ),
    );
  }
}

class PhoneInput extends StatefulWidget {
  const PhoneInput({super.key});

  @override
  State<PhoneInput> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 325,
        height: 57,
        child: TextField(
          inputFormatters: [
            MaskTextInputFormatter(
                mask: '+# (###) ###-##-##',
                filter: {"#": RegExp(r'[0-9]')},
                type: MaskAutoCompletionType.lazy)
          ],
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: const Color.fromRGBO(255, 255, 255, 1),
              prefixIcon: Image.asset('assets/images/phone.png'),
              hintText: 'Телефон',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15), // Закругленные углы
                borderSide: const BorderSide(
                  color: Color.fromRGBO(244, 244, 244, 1), // Цвет обводки
                ),
              ),
              hintStyle: dropDownButtonText),
        ),
      ),
    );
  }
}

class AuthScreenText extends StatelessWidget {
  const AuthScreenText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 251,
      height: 48,
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(
            fontFamily: 'Philosopher',
            fontSize: 14,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.85,
            height: 1.2,
            color: Color.fromRGBO(59, 59, 59, 1),
          ),
          children: [
            TextSpan(text: 'Нажимая сохранить я соглашаюсь с'),
            TextSpan(
              text: ' правилами сервиса',
              style: TextStyle(
                color: Color.fromRGBO(27, 194, 122, 1),
              ),
            ),
            TextSpan(text: ' и '),
            TextSpan(
              text: 'политикой конфиденциальности',
              style: TextStyle(
                color: Color.fromRGBO(27, 194, 122, 1),
              ),
            ),
          ],
        ),
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
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AuthScreenSecond()));
          },
          child: const Text('Сохранить', style: buttonTextStyle)),
    );
  }
}
