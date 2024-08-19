import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/app_text.dart';

class TextFormFieldWidget extends StatelessWidget {
  final IconData? icon;
  final String? hintText;
  final Widget? suffix;
  final bool obscureText;

  const TextFormFieldWidget(
      {super.key,
      this.icon,
      this.hintText,
      this.suffix,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        style: const TextStyle(color: AppColor.colorWhite),
        obscureText: obscureText,
        decoration: InputDecoration(
            suffix: obscureText
                ? InkWell(
                    onTap: () {
                      print("object");
                    },
                    child: const Icon(Icons.visibility_off, color: AppColor.colorWhite))
                : null,
            border: const OutlineInputBorder(),
            fillColor: AppColor.colorFillTextField,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: AppColor.colorTextLabel,fontSize: 14),
            prefixIcon: Icon(
              icon,
              color: AppColor.colorWhite,
            )),
      ),
    );
  }
}
