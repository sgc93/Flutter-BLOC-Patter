import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: [
              _sizedBox(200.0),
              _wellComeText(),
              _sizedBox(50.0),
              _emailField(),
              _sizedBox(20.0),
              _passwordField(),
              _sizedBox(30.0),
              _submitBtn(deviceWidth),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sizedBox(height) {
    return SizedBox(
      height: height,
    );
  }

  Widget _wellComeText() {
    return const Text(
      'Well Come Back, Keep in touch!',
      style: TextStyle(
        color: Color.fromARGB(179, 10, 0, 88),
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _emailField() {
    return TextFormField(
      obscureText: false,
      keyboardType: TextInputType.emailAddress,
      decoration: _inputDecoration('Email Address', 'xyz@gmail.com'),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: _inputDecoration('password', ''),
    );
  }

  _inputDecoration(label, hint) {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
      fillColor: Colors.grey.shade200,
      filled: true,
      label: Text(label),
      hintText: hint,
    );
  }

  _submitBtn(deviceWidth) {
    return Container(
      width: deviceWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.black,
      ),
      child: TextButton(
        onPressed: () => {},
        child: const Text(
          'S U B M I T',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
