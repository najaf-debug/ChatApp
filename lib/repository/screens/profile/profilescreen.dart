// ignore_for_file: must_be_immutable

import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/bottomnav/bottomnavigationscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();

  ProfileScreen({super.key});

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
                context: context,
                icondata: (Icons.person)),
            SizedBox(
              height: 10,
            ),
            Uihelper.CustomTextField(
                controller: lastnameController,
                text: "Last Name (Required)",
                textinputtype: TextInputType.name,
                context: context,
                icondata: (CupertinoIcons.person_2)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Uihelper.CustomButton(
          buttonname: "Save",
          callback: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => BottomNavscreen()));
          }),
    );
  }
}
