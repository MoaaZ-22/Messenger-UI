import 'package:flutter/material.dart';

class ReusableStory extends StatelessWidget {
  const ReusableStory({Key? key, required this.name,required this.photo}) : super(key: key);
  final String name;
  final String photo;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(left: 6),
      width: 60.0,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(photo),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(
                    bottom: 2,
                    end: 2
                ),
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.red,
                ),
              )
            ],
          ),
          const SizedBox(height: 6,),
           Text(name,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow:TextOverflow.ellipsis,)
        ],),
    );
  }
}
