import 'package:day_task_app/utils/app_color.dart';
import 'package:day_task_app/utils/app_route.dart';
import 'package:day_task_app/utils/app_text.dart';
import 'package:day_task_app/utils/image_path.dart';
import 'package:day_task_app/view/widget/button_widget.dart';
import 'package:flutter/material.dart';

import '../../utils/app_them.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(child: Image.asset(ImagePath.logoPath)),
              Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: height * .35,
                  child: Image.asset(ImagePath.panaPath)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppText.textSplashScreen,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(AppText.textDayTask,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(color: AppColor.colorYellowDark)),
                ],
              ),
              ButtonWidget(
                  title: "let's Start",
                  onPress: () {
                    Navigator.pushNamed(context, AppRoute.loginScreen);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
