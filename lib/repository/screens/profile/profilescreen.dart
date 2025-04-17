import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();

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
        title: Uihelper.CustomText(
            text: "Your Profile",
            fontsize: 18,
            context: context,
            fontweight: FontWeight.bold,
            fontfamily: "bold"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? Uihelper.CustomImage(imgUrl: "dark_avatar.png")
                : Uihelper.CustomImage(imgUrl: "light_avatar.png"),
            SizedBox(
              height: 30,
            ),
            Uihelper.CustomTextField(
                controller: firstnameController,
                text: "First Name (Required)",
                textinputtype: TextInputType.name,
                context: context),
            SizedBox(
              height: 10,
            ),
            Uihelper.CustomTextField(
                controller: lastnameController,
                text: "Last Name (Required)",
                textinputtype: TextInputType.name,
                context: context),
          ],
        ),
      ),
      floatingActionButton:
          Uihelper.CustomButton(buttonname: "Save", callback: () {}),
    );
  }
}
