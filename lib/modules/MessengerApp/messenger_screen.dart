
import 'package:flutter/material.dart';
import 'package:messenger_app/modules/MessengerApp/reusable_message.dart';
import 'package:messenger_app/modules/MessengerApp/reusable_story_photo.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: const [
             CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/295478377_1266326634105151_609110673496022304_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-kuu5y06JL4AX-vs9Lh&_nc_ht=scontent.fcai19-4.fna&oh=00_AT_s9PIXdGlFJb4ngtRLUlooFBnOAp8tyyOBTiPHe98X0Q&oe=634A265C'),
            ),
            SizedBox(width: 15,),
            Text('Chats',style: TextStyle(color: Colors.black),)
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:const CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blue,
            child: Icon(Icons.camera_alt),
          )),
          IconButton(onPressed: (){}, icon:const CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blue,
            child: Icon(Icons.edit),
          ))

        ],
      ),
      body: SingleChildScrollView(

        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            margin: const EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 15),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: const [
                Icon(Icons.search),SizedBox(width: 15,),
                Text('Search')
              ],
            ),
          ),
          const SizedBox(height: 10,),
            // List View In Sized Box (Story List View)
            SizedBox(
              height: 100.0,
              child: ListView.separated(itemBuilder: (BuildContext context, int index)
              {
                return const ReusableStory(name: 'MoaaZ Muhammed', photo: 'https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/295478377_1266326634105151_609110673496022304_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-kuu5y06JL4AX-vs9Lh&_nc_ht=scontent.fcai19-4.fna&oh=00_AT_s9PIXdGlFJb4ngtRLUlooFBnOAp8tyyOBTiPHe98X0Q&oe=634A265C');
              },
                itemCount: 10,
                scrollDirection: Axis.horizontal, separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index)
            {
              return const ReusableMessage(text: 'MoaaZ MuhammedD', image: 'https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/295478377_1266326634105151_609110673496022304_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-kuu5y06JL4AX-vs9Lh&_nc_ht=scontent.fcai19-4.fna&oh=00_AT_s9PIXdGlFJb4ngtRLUlooFBnOAp8tyyOBTiPHe98X0Q&oe=634A265C');
            },
              itemCount: 15,
              scrollDirection: Axis.vertical, separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
            ),




        ],),
      ),
    );
  }


}
