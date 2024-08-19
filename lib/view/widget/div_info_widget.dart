import 'package:day_task_app/utils/app_text.dart';
import 'package:day_task_app/view/widget/label_widget.dart';
import 'package:day_task_app/view/widget/text_field_widget.dart';
import 'package:flutter/material.dart';
class DivInfoWidget extends StatelessWidget {
  final bool isSingUpScreen;
  const DivInfoWidget({super.key,  this.isSingUpScreen=false});

  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isSingUpScreen)  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelWidget(
              title: AppText.textFullName,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 10),
            const TextFormFieldWidget(
                icon: Icons.person, hintText: AppText.textFullName),
            const SizedBox(height: 10),

          ],
        ),

        LabelWidget(
          title: AppText.textEmailAddress,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 10),
        const TextFormFieldWidget(
            icon: Icons.email,
            hintText: AppText.textEmailAddress),
        const SizedBox(height: 15),
        LabelWidget(
          title: AppText.textPassword,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 10),
        const TextFormFieldWidget(
            icon: Icons.lock,
            hintText: AppText.textHintPass,
            obscureText: true),
      ],
    );
  }
}
