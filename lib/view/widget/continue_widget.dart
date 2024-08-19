import 'package:flutter/material.dart';

import '../../utils/app_text.dart';
import 'label_widget.dart';
class ContinueWidget extends StatelessWidget {
  const ContinueWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
              color: Colors.white,
              height: 1,
            )),
         Padding(
          padding:const EdgeInsets.symmetric(horizontal: 8.0),
          child: LabelWidget(title: AppText.textOrContinueWith,style: Theme.of(context).textTheme.labelLarge,),
        ),
        Expanded(
            child: Container(
              color: Colors.white,
              height: 1,
            )),
      ],
    );
  }
}