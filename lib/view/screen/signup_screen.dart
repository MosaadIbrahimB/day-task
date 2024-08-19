import 'package:day_task_app/view/widget/div_info_widget.dart';
import 'package:day_task_app/view/widget/footer_widget.dart';
import 'package:flutter/material.dart';

import '../../utils/app_text.dart';
import '../../utils/image_path.dart';
import '../widget/agree_terms_widget.dart';
import '../widget/button_widget.dart';
import '../widget/label_widget.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Align(
                      alignment: AlignmentDirectional.center,
                      child: Image.asset(ImagePath.logoPath)),
                  const SizedBox(height: 10),
                  const WelcomeWidget(title: AppText.textCreateYourAccount),
                  const SizedBox(height: 15),
                  const DivInfoWidget(isSingUpScreen: true),
                  const SizedBox(height: 10),
                 const AgreeTerm(),
                  const SizedBox(height: 10),
                  ButtonWidget(
                    title: AppText.textLogIn,
                    onPress: () {},
                  ),
                  const SizedBox(height: 10),
                  const FooterWidget(isSignUpScreen: true)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
