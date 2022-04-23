import 'package:flutter/material.dart';
import 'package:optimus/resources/colours.dart';

enum InputType { text, password, email }

class InputField extends StatefulWidget {
  final String placeholder;
  final InputType type;
  const InputField(
      {Key? key, required this.placeholder, this.type = InputType.text})
      : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  InputBorder commonBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colours.primary.withAlpha(30), width: 2.0),
    borderRadius: BorderRadius.circular(10.0),
  );
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return TextField(
      controller: nameController,
      decoration: InputDecoration(
        enabledBorder: commonBorder,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        fillColor: Colours.textfieldBGColor,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        floatingLabelStyle: const TextStyle(color: Colours.primary),
        focusedBorder: commonBorder,
        labelText: widget.placeholder,
      ),
    );
  }
}
