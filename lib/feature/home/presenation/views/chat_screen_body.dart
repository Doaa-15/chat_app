
import 'package:chat_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/core/utils/model.dart';


class ChatScreenBody extends StatefulWidget {
  const ChatScreenBody({super.key});

  @override
  State<ChatScreenBody> createState() => _ChatScreenBodyState();
}

class _ChatScreenBodyState extends State<ChatScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.search_color,
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsetsGeometry.all(10)),
                  Icon(Icons.search,color:Colors.grey,size: 20,),
                  SizedBox(width: 8,),
                  Text("Search",style: TextStyle(fontSize: 15,color: Colors.grey),),
                ],
              ),
            ),
          ),
      SliverToBoxAdapter(
        child: SizedBox(
      height: 100,
      child: ListView.builder(
         
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: user.length,
        itemBuilder: (context, index) => Padding(padding: EdgeInsetsGeometry.all(10),
        child:CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.color_blue,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage:NetworkImage(user[index].image),
                  ),
                ), ),
      ),
        ),
      ),
      
      SliverToBoxAdapter(
        child: SizedBox(
          height: 700,
          child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: user.length,
          itemBuilder: (context, index) => Padding(
          padding:const EdgeInsetsGeometry.all(5),
          child: ListTile(
          leading:  CircleAvatar(
            radius: 22,
            backgroundImage:NetworkImage(user[index].image),
          ),
          title: Text(user[index].title),
          subtitle: Text(user[index].subtitle), 
          trailing: Icon(Icons.check_sharp),         
          ),),
          ),
        ),
      ),
    
        ],
      ),
    );
  }
}
