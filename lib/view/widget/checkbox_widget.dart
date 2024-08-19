import 'package:day_task_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 25,
      height: 25,
      decoration:
          BoxDecoration(border: Border.all(color: AppColor.colorYellowDark)),
      child: Checkbox(
        value: true,
        onChanged: (v) {},
        activeColor: AppColor.colorBackGround,
        // Changes the color when checked
        checkColor: AppColor.colorYellowDark,
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColor
                .colorBackGround; // Changes the checkbox color when checked
          }
          return Colors.red; // Changes the checkbox color when unchecked
        }),
      ),
    );
  }
}
