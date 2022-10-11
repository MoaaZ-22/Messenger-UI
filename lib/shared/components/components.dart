import 'package:flutter/material.dart';


Widget defaultButton(
        {required double width,
        required double height,
        required Color background,
        required VoidCallback function,
        required String text}) =>
    SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: function,
        color: background,
        elevation: 10,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );

// Reusable Text Field On Login Screen (Email And Password)
class ReusableTextField extends StatelessWidget {
  final String labelText;
  final bool isPassword;
  final bool? isEnabled;
  final void Function()? onTab;
  final void Function(String)? onChange;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final Function()? suffixFunc;
  final TextInputType keyboardInputType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const ReusableTextField({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
    required this.keyboardInputType,
    this.suffixIcon,
    required this.isPassword,
    this.suffixFunc,
    this.controller,
    this.validator,
    this.onTab,
    this.isEnabled,
    this.onChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnabled,
      onTap: onTab,
      onChanged: onChange,
      obscureText: isPassword,
      validator: validator,
      controller: controller,
      keyboardType: keyboardInputType,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          suffixIcon: suffixIcon != null
              ? IconButton(onPressed: suffixFunc, icon: Icon(suffixIcon))
              : null,
          prefixIcon: Icon(prefixIcon),
          labelText: labelText),
    );
  }
}

Widget divider({required Color colorOfDivider}) => Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: colorOfDivider,
      ),
    );

void navigateTo (context,dynamic widget) =>  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => widget),
);