import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/app_text.dart';
import 'checkbox_widget.dart';
class AgreeTerm extends StatelessWidget {
  const AgreeTerm({super.key});

  @override
  Widget build(BuildContext context) {
    return      Row(
      children: [
        const CheckBoxWidget(),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: AppText.textIHaveRead,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontSize: 16),
              ),
              TextSpan(
                text:
                "${AppText.textPrivacyPolicy}\n${AppText.textTerms}",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(
                    color: AppColor.colorYellowDark,
                    fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
