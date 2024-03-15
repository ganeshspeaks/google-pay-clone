import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        child: Text(
          'No transactions',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}