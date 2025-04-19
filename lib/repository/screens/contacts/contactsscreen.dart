// ignore_for_file: must_be_immutable

import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {
      "img": "Avatar1.png",
      "name": "Andthalia Putri",
      "lastseen": "Last seen yesterday",
    },
    {
      "img": "Avatar2.png",
      "name": "Erlan Sedewa",
      "lastseen": "Online",
    },
    {
      "img": "Avatar3.png",
      "name": "Midala Huera",
      "lastseen": "Last seen 3 hours ago",
    },
    {
      "img": "Avatar4.png", // Fixed typo in image name
      "name": "Nafisa Gitari",
      "lastseen": "Online",
    },
    {
      "img": "Avatar5.png",
      "name": "Roki Devan",
      "lastseen": "Online",
    },
    {
      "img": "Avatar6.png",
      "name": "Salsabila Akira",
      "lastseen": "Last seen 30 minutes ago",
    }
  ];

  ContactsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: Uihelper.CustomText(
            text: "Contacts", fontsize: 18, context: context),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Uihelper.CustomTextField(
              controller: searchController,
              text: "Search",
              textinputtype: TextInputType.name,
              context: context,
              icondata: (Icons.search)),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Uihelper.CustomImage(
                        imgUrl: arrContacts[index]["img"].toString()),
                    title: Uihelper.CustomText(
                        text: arrContacts[index]["name"].toString(),
                        fontsize: 14,
                        context: context,
                        fontweight: FontWeight.w600,
                        color: AppColors.iconlight),
                    subtitle: Uihelper.CustomText(
                        text: arrContacts[index]["lastseen"].toString(),
                        fontsize: 12,
                        context: context,
                        color: AppColors.iconlight),
                  ),
                );
              },
              itemCount: arrContacts.length,
            ),
          )
        ],
      ),
    );
  }
}
