import 'package:flutter/material.dart';

class CustomPeople extends StatefulWidget {
  const CustomPeople({super.key});

  @override
  State<CustomPeople> createState() => _CustomPeopleState();
}

class _CustomPeopleState extends State<CustomPeople> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Row(
          children: [
              Icon(Icons.account_circle,size: 45,),
              SizedBox(width: 8),
              Text("Person Name"),
            ],
          ),
          actions:const [
            Icon(Icons.call),
            SizedBox(width: 8),
            Icon(Icons.more_vert),
          ],
      ),
      body:const Center(
        child: Text(
          'Say hi!',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}