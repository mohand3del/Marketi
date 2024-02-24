import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: Colors.blue,
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text('Hi Moaz !',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        //Spacer(),
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            CircleAvatar(
              radius: 5,
              backgroundColor: Colors.blue,
            ),
            Icon(Icons.notifications_none_sharp,size: 36,color: Colors.blue,),
          ],
        ),
      ],
    );
  }
}
