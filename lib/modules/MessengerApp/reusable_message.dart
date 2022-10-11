import 'package:flutter/material.dart';

class ReusableMessage extends StatelessWidget {
  const ReusableMessage({Key? key,required this.text,required this.image}) : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(image),
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
          const SizedBox(width: 15.0,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 Text(text,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,),const SizedBox(height: 8,),
                Row(children:  [
                  const Expanded(child: Text('Hello My Name IS MoaaZ Salem Ammar Im From ',maxLines: 1,overflow: TextOverflow.ellipsis,)),const SizedBox(width: 5,),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                    ),
                  ),const SizedBox(width: 5,),
                  const Text('2.00 PM')

                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}
