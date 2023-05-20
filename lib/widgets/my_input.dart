import 'package:flutter/material.dart';
import 'package:futibas/theme/my_colors.dart';

class MyInput extends StatefulWidget {
  const MyInput({Key? key, this.label, this.validatorMethod, this.placeholder, this.onSend, this.suffixIcon,})
      : super(key: key);

  final String? label;
  final String? placeholder;
  final String? Function(String?)? validatorMethod;
  final Function(String?)? onSend;
  final Widget? suffixIcon;

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value) => widget.onSend != null ? widget.onSend!(value) : {},
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        suffixIconColor: MaterialStateColor.resolveWith((states) => 
          states.contains(MaterialState.focused)
          ? MyColors.primary
          : MyColors.secondary
        ),
        hintText: widget.placeholder,
        labelText: widget.label,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      ),
      validator: widget.validatorMethod,
    );
  }

}
