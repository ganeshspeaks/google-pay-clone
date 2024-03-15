import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 35, 35),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 35, 35, 35),
        elevation: 0,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return [
                const PopupMenuItem(
                  value: 'Referral',
                  child: Text('Referral'),
                ),

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
          )
        ],
      ),

      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bank balance',
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            SizedBox(height: 20,),
            Text(
              '₹ 1,20,00,000',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}