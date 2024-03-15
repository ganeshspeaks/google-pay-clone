import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  final String title;
  final String description;
  const CustomPage({super.key, required this.title, required this.description});

  @override
  State<CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 35, 35),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 35, 35, 35),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return [
                const PopupMenuItem(
                  value: 'Get help',
                  child: Text('Get help'),
                ),

                const PopupMenuItem(
                  value: 'Send feedback',
                  child: Text('Send feedback'),
                ),
              ];
            }
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              widget.description,
            ),
      
            const SizedBox(height: 15,),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1,color: Colors.grey),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.blue)
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}