import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 35, 35),
      body: ListView(
        children: [
          Stack(
            children: [
              // Background Image
              Image.asset(
                'bg.jpg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),

              // Transparent AppBar
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AppBar(
                  title: const Text('Total rewards'),
                  backgroundColor: Colors.transparent,
                  elevation: 0, // Remove elevation
                ),
              ),
              
            ],
          ),

          const Padding(
            padding:  EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Exclusive offers',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                
              ],
            ),
          )
        ],
      ),
      
    );
  }
}
