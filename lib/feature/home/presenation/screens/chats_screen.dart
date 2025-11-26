import 'package:chat_app/core/theme/colors.dart';
import 'package:chat_app/feature/home/presenation/views/chat_screen_body.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.background_home,
      appBar: AppBar(
      backgroundColor: AppColors.background_home,
        title: Row(
          spacing: 10,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assets/image/profile.jpg"),
            ),
            Text("Chats",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:AppColors.color_black),),
          SizedBox(
            width: 80,
          ),
           Icon(Icons.camera_alt_sharp), 
           Icon(Icons.edit),
          ],
        ),
       
      ),
      body: ChatScreenBody(),
    );
  }
}
