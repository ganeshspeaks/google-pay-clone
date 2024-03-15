import 'package:flutter/material.dart';

class Rewards extends StatelessWidget {
  const Rewards({Key? key}) : super(key: key);

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

          Padding(
            padding:const  EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your rewards',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'landscape.jpeg',
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),

                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 280,
                        height: 100,
                        decoration:const BoxDecoration(
                          color:Colors.black,
                        ),
                      ),
                    ),

                    const Positioned(
                      top: 75,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.circle_notifications,
                            size: 40,
                          ),
                                    
                          Text(
                            'Rewards',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),

                          Text(
                            'cashback on mobile recharge',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                                    
                                    
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      
    );
  }
}
