import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';
import 'package:optimus/resources/styles.dart';

enum InputType { text, password, email }

// Factory class to get the text fields
class Inputs {
  static getTextField(
      InputType type, final String placeholder, final String hintText) {
    switch (type) {
      case InputType.text:
        return InputTextField(placeholder: placeholder, hintText: hintText);
      case InputType.password:
        return PasswordTextField(placeholder: placeholder, hintText: hintText);
      case InputType.email:
        return EmailTextField(placeholder: placeholder, hintText: hintText);
      default:
    }
  }
}

class InputTextField extends StatefulWidget {
  final String placeholder;
  final String hintText;
  const InputTextField(
      {Key? key, required this.placeholder, required this.hintText})
      : super(key: key);

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: Decorations.textFieldDecoration,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colours.textfieldBGColor,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        floatingLabelStyle: const TextStyle(color: Colours.primary),
        focusedBorder: Decorations.textFieldDecoration,
        hintText: widget.hintText,
        labelText: widget.placeholder,
      ),
    );
  }
}

class EmailTextField extends StatefulWidget {
  final String placeholder;
  final String hintText;
  const EmailTextField(
      {Key? key, required this.placeholder, required this.hintText})
      : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  late bool _isValid;
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    setState(() {
      _isValid = true;
    });
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validateEmail(value),
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: Decorations.textFieldDecoration,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colours.textfieldBGColor,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        floatingLabelStyle: const TextStyle(color: Colours.primary),
        focusedBorder: Decorations.textFieldDecoration,
        hintText: widget.hintText,
        labelText: widget.placeholder,
      ),
    );
  }

  String validateEmail(String? value) {
    String value = emailController.text;
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value.isEmpty || !regex.hasMatch(value)) {
      setState(() {
        _isValid = false;
      });
      return "Enter valid email address";
    }
    setState(() {
      _isValid = true;
    });
    return "";
  }
}

class PasswordTextField extends StatefulWidget {
  final String placeholder;
  final String hintText;
  const PasswordTextField(
      {Key? key, required this.placeholder, required this.hintText})
      : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  late bool _isObscureText;
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    setState(() {
      _isObscureText = true;
    });
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  void toggleState() {
    setState(() {
      _isObscureText = !_isObscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passwordController,
      obscureText: _isObscureText,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          enabledBorder: Decorations.textFieldDecoration,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Colours.textfieldBGColor,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          floatingLabelStyle: const TextStyle(color: Colours.primary),
          focusedBorder: Decorations.textFieldDecoration,
          hintText: widget.hintText,
          labelText: widget.placeholder,
          suffixStyle: const TextStyle(color: Colours.primary, fontSize: 10),
          suffixIcon: IconButton(
            icon: Icon(
              _isObscureText ? Icons.visibility_off : Icons.visibility,
              size: 20,
              color: Colours.primary,
            ),
            onPressed: toggleState,
          )),
    );
  }
}
