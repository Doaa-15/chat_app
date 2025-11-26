import 'package:chat_app/core/theme/colors.dart';
import 'package:chat_app/feature/home/presenation/screens/chats_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.chat_bubble,size: 25,color: AppColors.color_white,),
          Text("Welcome to chat",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColors.color_white),),
          IconButton(onPressed:(
          ){
            Navigator.push(context, MaterialPageRoute(builder:(context) => ChatsScreen(),));
          } 
          , icon:Icon(Icons.navigate_next,size: 25,color: AppColors.color_white,) )
        ],
      ),
    );
  }
}