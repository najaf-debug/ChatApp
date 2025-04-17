import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/otp/otpscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back)),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomText(
                text: "Enter Your Phone Number",
                fontsize: 24,
                context: context,
                fontweight: FontWeight.bold,
                fontfamily: "bold"),
            SizedBox(
              height: 10,
            ),
            Uihelper.CustomText(
                text: "Please confirm your country code and enter",
                fontsize: 14,
                context: context),
            Uihelper.CustomText(
                text: "your phone number", fontsize: 14, context: context),
            SizedBox(
              height: 20,
            ),
            Uihelper.CustomTextField(
                controller: phoneController,
                text: "Phone Number",
                textinputtype: TextInputType.number,
                context: context),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
          buttonname: "Continue",
          callback: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Otpscreen()));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
