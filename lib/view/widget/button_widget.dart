import 'package:day_task_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color? backColor;
  final Color? frontColor;
  final BorderSide? side;
  final IconData? icon;

  const ButtonWidget({
    super.key,
    required this.title,
    required this.onPress,
    this.backColor = AppColor.colorYellowDark,
    this.frontColor = Colors.black,
    this.side,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          shape: const ContinuousRectangleBorder(),
          backgroundColor: backColor,
          foregroundColor: frontColor,
          side: side,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
