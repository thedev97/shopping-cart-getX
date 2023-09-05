import 'package:flutter/material.dart';
import '../../../utils/values/values.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onPress;

  const Button({Key? key, required this.title, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 100,
      child: ElevatedButton(
          onPressed: onPress,
          style: ButtonStyles.primaryDecoration,
          child: Text(
            title,
            style: AppTextStyles.normalText2,
          )),
    );
  }
}
