import 'package:day_task_app/utils/app_route.dart';
import 'package:day_task_app/utils/app_text.dart';
import 'package:day_task_app/utils/image_path.dart';
import 'package:flutter/material.dart';

import '../widget/button_widget.dart';
import '../widget/div_info_widget.dart';
import '../widget/footer_widget.dart';
import '../widget/label_widget.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Align(
                      alignment: AlignmentDirectional.center,
                      child: Image.asset(ImagePath.logoPath)),
                  const SizedBox(height: 20),
                  const WelcomeWidget(title: AppText.textWelcomeBack),
                  const SizedBox(height: 20),
                  const DivInfoWidget(),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: InkWell(
                      onTap: () {},
                      child: LabelWidget(
                        title: AppText.textForgotPassword,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ),
                  ButtonWidget(
                    title: AppText.textLogIn,
                    onPress: () {
                      if(_formKey.currentState!.validate()){
                         Navigator.pushNamed(context, AppRoute.signupScreen);
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  FooterWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
