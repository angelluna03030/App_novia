import 'package:flutter/material.dart';

class Mesaje_box extends StatelessWidget {
  final ValueChanged<String> onValue;
  const Mesaje_box({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    final textController = TextEditingController();
    final OutlineInputBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));
    final inputDEcoration = InputDecoration(
        hintText: "Escribe un mesaje...",
        enabledBorder: OutlineInputBorder,
        focusedBorder: OutlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
            onPressed: () {
              final textValue = textController.value.text;

              textController.clear();
              onValue(textValue);
            },
            icon: Icon(Icons.send_outlined)));

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDEcoration,
      onFieldSubmitted: (value) {
     onValue(value);
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
