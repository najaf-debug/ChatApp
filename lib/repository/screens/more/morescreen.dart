import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MoreScreen extends StatelessWidget {
  MoreScreen({super.key});

  var arrMore = [
    {"icon": Icons.person, "txt": "Account"},
    {"icon": CupertinoIcons.chat_bubble_fill, "txt": "Chats"},
    {"icon": Icons.sunny, "txt": "Appearence"},
    {"icon": Icons.notifications_active, "txt": "Notifications"},
    {"icon": Icons.privacy_tip, "txt": "Privacy"},
    {"icon": Icons.folder, "txt": "Data Usage"},
    {"icon": Icons.help, "txt": "Help"},
    {"icon": Icons.mail, "txt": "Invite Your Friends"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: Uihelper.CustomText(
            text: "More",
            fontsize: 18,
            context: context,
            fontweight: FontWeight.bold,
            fontfamily: "bold"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark
                ? Uihelper.CustomImage(imgUrl: "profile.png")
                : Uihelper.CustomImage(imgUrl: "light_profile.png"),
            title: Uihelper.CustomText(
                text: "Almayra Zamzamy",
                fontsize: 14,
                context: context,
                fontweight: FontWeight.bold,
                fontfamily: "bold"),
            subtitle: Uihelper.CustomText(
                text: "+62 1309 - 1710 - 1920", fontsize: 12, context: context),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(CupertinoIcons.forward)),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    arrMore[index]["icon"] as IconData,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.scaffolddark
                        : AppColors.iconlight,
                  ),
                  title: Uihelper.CustomText(
                      text: arrMore[index]["txt"].toString(),
                      fontsize: 14,
                      context: context),
                  trailing: Icon(CupertinoIcons.forward),
                );
              },
              itemCount: arrMore.length,
            ),
          )
        ],
      ),
    );
  }
}
