import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/domain/constants/cubits/themecubit..dart';
import 'package:chatapp/repository/screens/login/loginscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<ThemeCubit>(context).toggletheme();
              },
              icon: Icon(Icons.dark_mode))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(imgUrl: "onboarding.png"),
            SizedBox(
              height: 20,
            ),
            Uihelper.CustomText(
                text: "Connect easily with",
                fontsize: 24,
                fontfamily: "bold",
                fontweight: FontWeight.bold,
                context: context),
            Uihelper.CustomText(
                text: "your family and friends",
                fontsize: 24,
                fontfamily: "bold",
                fontweight: FontWeight.bold,
                context: context),
            Uihelper.CustomText(
                text: "over countries",
                fontsize: 24,
                fontfamily: "bold",
                fontweight: FontWeight.bold,
                context: context),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
          buttonname: "Start Messaging",
          callback: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Loginscreen()));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
