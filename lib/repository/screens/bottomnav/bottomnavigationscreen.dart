import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/chats/chatsscreen.dart';
import 'package:chatapp/repository/screens/contacts/contactsscreen.dart';
import 'package:chatapp/repository/screens/more/morescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavscreen extends StatefulWidget {
  const BottomNavscreen({super.key});

  @override
  State<BottomNavscreen> createState() => _BottomNavscreenState();
}

class _BottomNavscreenState extends State<BottomNavscreen> {
  int currentIndex = 1;
  List<Widget> pages = [
    ContactsScreen(),
    ChatsScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_2_alt), label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More")
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        selectedIconTheme: IconThemeData(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.textdarkmode
                : AppColors.textlightmode),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
    );
  }
}
