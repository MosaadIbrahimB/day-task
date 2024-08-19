import 'package:day_task_app/view/widget/signup_widget.dart';
import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/app_route.dart';
import '../../utils/app_text.dart';
import 'button_widget.dart';
import 'continue_widget.dart';
class FooterWidget extends StatelessWidget {
  final bool  isSignUpScreen;
  const FooterWidget({super.key,  this.isSignUpScreen=false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ContinueWidget(),
        const SizedBox(height: 20),
        ButtonWidget(
          onPress: () {},
          icon: Icons.g_mobiledata_rounded,
          title: AppText.textGoogle,
          side: const BorderSide(color: Colors.white, width: 1),
          backColor: AppColor.colorBackGround,
          frontColor: AppColor.colorWhite,
        ),
        const SizedBox(height: 15),
        QuestionHaveAccountWidget(
          onPress: () {
            isSignUpScreen?
            Navigator.pushNamed(context, AppRoute.loginScreen):
            Navigator.pushNamed(context, AppRoute.signupScreen);
            print(isSignUpScreen);
          },
          text: isSignUpScreen?AppText.textLogIn:AppText.textSignUp,
        )
      ],
    );
  }
}
