import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 35, 35),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 35, 35, 35),
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

      body: Padding(
        padding:const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // Name Id Profile

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ganesh Speaks',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 8,),

                    Text(
                      'ganeshspeaks@oksbi',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),

                    SizedBox(height: 8,),

                    Text(
                      '9940xxxx12',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                Icon(
                  Icons.account_circle,
                  color: Colors.amber,
                  size: 50,
                ),
              ],
            ),

            const SizedBox(height: 30,),

            // General Settings

            Row(
              children: [
                Icon(Icons.qr_code_2,color: Colors.blue[300],),

                const SizedBox(width: 5,),
                const Text(
                  'Your QR code',
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Icon(Icons.card_giftcard_outlined,color: Colors.blue[300],),

                const SizedBox(width: 5,),
                const Text(
                  'Invite friends, get rewards',
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Icon(Icons.payment,color: Colors.blue[300],),
                const SizedBox(width: 5,),
                const Text(
                  'Pay with credit or debit cards',
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Icon(Icons.settings_outlined,color: Colors.blue[300],),

                const SizedBox(width: 5,),
                const Text(
                  'Settings',
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Icon(Icons.account_circle_outlined,color: Colors.blue[300],),

                const SizedBox(width: 5,),
                const Text(
                  'Manage Google account',
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Icon(Icons.help_outline,color: Colors.blue[300],),

                const SizedBox(width: 5,),
                const Text(
                  'Get help',
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Icon(Icons.language,color: Colors.blue[300],),

                const SizedBox(width: 5,),
                const Text(
                  'Language',
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),


          ],
        ),
      ),
    );
  }
}