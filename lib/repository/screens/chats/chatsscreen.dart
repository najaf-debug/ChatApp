// ignore_for_file: must_be_immutable

import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});
  TextEditingController searchController = TextEditingController();
  var arrChat = [
    {
      "img": "Avatar1.png",
      "name": "Andthalia Putri",
      "msg": "Good morning, did you sleep well?",
      "date": "Today",
      "msgcount": "1"
    },
    {
      "img": "Avatar2.png",
      "name": "How is it going?",
      "msg": "Online",
      "date": "18/4",
      "msgcount": "0"
    },
    {
      "img": "Avatar6.png",
      "name": "Salsabila Akira",
      "msg": "Aight, noted",
      "date": "17/4",
      "msgcount": "1"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: Uihelper.CustomText(
            text: "Chats",
            fontsize: 18,
            context: context,
            fontweight: FontWeight.bold,
            fontfamily: "bold"),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.mark_chat_unread_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.CustomImage(imgUrl: "Story.png"),
              SizedBox(
                width: 20,
              ),
              Uihelper.CustomImage(imgUrl: "Story1.png"),
              SizedBox(
                width: 30,
              ),
              Uihelper.CustomImage(imgUrl: "Story2.png"),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Uihelper.CustomText(
                  text: "Your Story",
                  fontsize: 10,
                  context: context,
                  fontweight: FontWeight.bold,
                  fontfamily: "bold"),
              SizedBox(
                width: 20,
              ),
              Uihelper.CustomText(
                  text: "Andthalia Pu..",
                  fontsize: 10,
                  context: context,
                  fontweight: FontWeight.bold,
                  fontfamily: "bold"),
              SizedBox(
                width: 15,
              ),
              Uihelper.CustomText(
                  text: "Roki Devan",
                  fontsize: 10,
                  context: context,
                  fontweight: FontWeight.bold,
                  fontfamily: "bold"),
            ],
          ),
          Divider(
            color: AppColors.iconlight,
          ),
          SizedBox(
            height: 20,
          ),
          Uihelper.CustomTextField(
              controller: searchController,
              text: "Search",
              textinputtype: TextInputType.name,
              context: context,
              icondata: (Icons.search)),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Uihelper.CustomImage(
                        imgUrl: arrChat[index]["img"].toString()),
                    title: Uihelper.CustomText(
                        text: arrChat[index]["name"].toString(),
                        fontsize: 14,
                        context: context),
                    subtitle: Uihelper.CustomText(
                        text: arrChat[index]["msg"].toString(),
                        fontsize: 12,
                        context: context,
                        color: AppColors.iconlight),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Uihelper.CustomText(
                            text: arrChat[index]["date"].toString(),
                            fontsize: 10,
                            context: context,
                            color: Color(0xFFA4A4A4)),
                        SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xFFD2D5F9),
                          radius: 12,
                          child: Uihelper.CustomText(
                              text: arrChat[index]["msgcount"].toString(),
                              fontsize: 10,
                              context: context),
                        )
                      ],
                    ),
                  );
                },
                itemCount: arrChat.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
