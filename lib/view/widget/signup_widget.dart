import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/app_text.dart';
import 'label_widget.dart';

class QuestionHaveAccountWidget extends StatelessWidget {
  final VoidCallback onPress;
  final String text;

  const QuestionHaveAccountWidget({
    super.key,
    required this.onPress, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LabelWidget(
            title: AppText.textDoNotHaveAnAccount,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              fontSize: 16,
            )),
        const SizedBox(width: 5),
        InkWell(
          onTap: onPress,
          child: LabelWidget(
              title: text,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(fontSize:16,color: AppColor.colorYellowDark)),
        ),
      ],
    );
  }
}
