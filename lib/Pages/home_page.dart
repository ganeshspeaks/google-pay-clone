import 'package:flutter/material.dart';
import 'package:google_pay/Pages/balance.dart';
import 'package:google_pay/Pages/cibil_score.dart';
import 'package:google_pay/Pages/profile.dart';
import 'package:google_pay/Pages/transaction.dart';
import 'package:google_pay/components/cutom_button.dart';
import 'package:google_pay/components/pages/bank_transfer.dart';
import 'package:google_pay/components/pages/custom_people.dart';
import 'package:google_pay/components/pages/mobile_recharge.dart';
import 'package:google_pay/components/pages/offers.dart';
import 'package:google_pay/components/pages/pay_bills.dart';
import 'package:google_pay/components/pages/pay_contact.dart';
import 'package:google_pay/components/pages/pay_upi.dart';
import 'package:google_pay/components/pages/phone_number.dart';
import 'package:google_pay/components/pages/referrals.dart';
import 'package:google_pay/components/pages/rewards.dart';
import 'package:google_pay/components/pages/scan.dart';
import 'package:google_pay/components/pages/self_transfer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 35, 35),
      body: ListView(
        children: [
          // TextField Area
          Stack(
            children: [
              Image.asset(
                'assets/bg.jpg',
                fit: BoxFit.cover,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                color: Colors.transparent,
                // height: 250,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2.0,
                              horizontal: 5.0,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 54, 54, 54),
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(28.0),
                            ),
                            child: TextField(
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              onTap: () {},
                              cursorColor: Colors.white,
                              decoration: const InputDecoration(
                                iconColor: Colors.white,
                                border: InputBorder.none,
                                icon: Icon(Icons.search),
                                hintText: 'Pay by name or phone number',
                                hintStyle: TextStyle(
                                  color: Colors.white38,
                                )
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context)=>const ProfilePage())
                            );
                          },
                          icon: const Icon(
                            Icons.account_circle,
                            color: Colors.amber,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 15,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                  icon: const Icon(
                    Icons.qr_code_rounded,
                    color: Colors.blue,
                  ),
                  text: 'Scan any QR Code',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const ScanQr())
                    );
                  }
              ),
              CustomButton(
                  icon: const Icon(
                    Icons.phone_android,
                    color: Colors.blue,
                  ),
                  text: 'Pay Contacts',
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const PayContact()
                      ),
                    );
                  }),
              CustomButton(
                  icon: const Icon(
                    Icons.send_to_mobile_outlined,
                    color: Colors.blue,
                  ),
                  text: 'Pay phone number',
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const PayPhoneNumber()
                      ),
                    );
                  }),
              CustomButton(
                  icon: const Icon(
                    Icons.account_balance,
                    color: Colors.blue,
                  ),
                  text: 'Bank transfer',
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const BankTransfer()
                      ),
                    );
                  }),
            ],
          ),

          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                  icon: const Icon(
                    Icons.payment,
                    color: Colors.blue,
                  ),
                  text: 'Pay UPI ID or number',
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const PayUpi()
                      ),
                    );
                  }),
              CustomButton(
                  icon: const Icon(
                    Icons.autorenew,
                    color: Colors.blue,
                  ),
                  text: 'Self transfer',
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const SelfTransfer(),
                      ),
                    );
                  }),
              CustomButton(
                  icon: const Icon(
                    Icons.receipt_long,
                    color: Colors.blue,
                  ),
                  text: 'Pay bills',
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const PayBills()
                      ),
                    );
                  }),
              CustomButton(
                  icon: const Icon(
                    Icons.charging_station_outlined,
                    color: Colors.blue,
                  ),
                  text: 'Mobile recharge',
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const MobileRecharge()
                      ),
                    );
                  }),
            ],
          ),

          const SizedBox(
            height: 15,
          ),

          // P E O P L E 

          const Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 10.0
            ),
            child: Text(
              'People',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.red[900],
                  size: 45,
                ), 
                text: 'Krishn', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),

              CustomButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.amber[900],
                  size: 45,
                ), 
                text: 'Ram', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),

              CustomButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.blue[900],
                  size: 45,
                ), 
                text: 'Buddh', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),


              CustomButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.green[900],
                  size: 45,
                ), 
                text: 'Shankar', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),
            ],
          ),

          // second row
          const SizedBox(
            height: 15,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                icon:const Icon(
                  Icons.account_circle,
                  color: Color.fromARGB(255, 134, 0, 105),
                  size: 45,
                ), 
                text: 'Savitri',
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),

              CustomButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.amber[300],
                  size: 45,
                ), 
                text: 'Muhammad', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),

              CustomButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.blue[400],
                  size: 45,
                ), 
                text: 'Plato', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),


              CustomButton(
                icon: const Icon(
                  Icons.account_circle,
                  color: Colors.pinkAccent,
                  size: 45,
                ), 
                text: 'Aristotle', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),
            ],
          ),


          const SizedBox(
            height: 15,
          ),

          // B U S I N E S S E S
          
          Padding(
            padding:const  EdgeInsets.only(
              left: 20.0,
              top: 10.0,
              right: 10.0
            ),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Businesses',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),

                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(176, 21, 101, 192),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    
                  ),
                  child: const Text('Explore'),
                  
                ),
                
              ],
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                icon:const Icon(
                  Icons.business_sharp,
                  color: Color.fromARGB(255, 134, 0, 105),
                  size: 45,
                ), 
                text: 'Real state',
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),

              CustomButton(
                icon: Icon(
                  Icons.cast_for_education,
                  color: Colors.amber[300],
                  size: 45,
                ), 
                text: 'Ed Tech', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),

              CustomButton(
                icon: Icon(
                  Icons.local_grocery_store,
                  color: Colors.blue[400],
                  size: 45,
                ), 
                text: 'Ecommerce', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),


              CustomButton(
                icon: const Icon(
                  Icons.developer_board,
                  color: Colors.pinkAccent,
                  size: 45,
                ), 
                text: 'Development', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const CustomPeople()
                      ),
                  );
                }
              ),
            ],
          ),


          const SizedBox(
            height: 15,
          ),

          // B I L L AND R E C H A R G E S
          const Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 10.0
            ),
            child: Text(
              'Bills & recharges',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                icon:const Icon(
                  Icons.charging_station_outlined,
                  color: Color.fromARGB(176, 21, 101, 192),
                  size: 45,
                ), 
                text: 'Mobile recharge',
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const MobileRecharge()
                      ),
                  );
                }
              ),

              CustomButton(
                icon:const Icon(
                  Icons.tv,
                  color: Color.fromARGB(176, 21, 101, 192),
                  size: 45,
                ), 
                text: 'DTH / Cable TV', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const MobileRecharge()
                      ),
                  );
                }
              ),

              CustomButton(
                icon:const Icon(
                  Icons.lightbulb_outline,
                  color: Color.fromARGB(176, 21, 101, 192),
                  size: 45,
                ), 
                text: 'Electricity', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const MobileRecharge()
                      ),
                  );
                }
              ),


              CustomButton(
                icon: const Icon(
                  Icons.car_rental_outlined,
                  color: Color.fromARGB(176, 21, 101, 192),
                  size: 45,
                ), 
                text: 'FASTag recharge', 
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const MobileRecharge()
                      ),
                  );
                }
              ),
            ],
          ),


          const SizedBox(
            height: 15,
          ),

          TextButton(
            onPressed: (){},
            child: Container(
              width: 100,
              padding:const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.white60,
                ),
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: const Text('See all',textAlign: TextAlign.center,),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          // O F F E R S and R E W A R D S
          const Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 10.0
            ),
            child: Text(
              'Offers & rewards',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                icon: Image.asset(
                  'assets/reward.png',
                  width: 40,
                ), 
                text: 'Rewards', 
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const Rewards())
                  );
                }
              ),

              CustomButton(
                icon: Image.asset(
                  'assets/offer.png',
                  width: 40,
                ), 
                text: 'Offers', 
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const Offers())
                  );
                }
              ),

              CustomButton(
                icon: Image.asset(
                  'assets/refer.png',
                  width: 40,
                ), 
                text: 'Referrals', 
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const Referrals())
                  );
                }
              ),

              CustomButton(
                icon: Image.asset(
                  'assets/cricket.png',
                  width: 40,
                ), 
                text: 'Cricket Fest', 
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const Referrals())
                  );
                }
              ),
            ],
          ),

          const SizedBox(
            height: 15,
          ),

          // M A N A G E  M O N E Y
          const Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 10.0
            ),
            child: Text(
              'Manage your money',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Container(
            padding:const EdgeInsets.all(18.0),
            
            decoration:const BoxDecoration(
              
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const CibilScore())
                    );
                  },
                  child:const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.speed,
                            color:   Color.fromARGB(176, 21, 101, 192),
                          ),

                          SizedBox(width: 15,),

                          Text(
                            'Check your CIBIL Score for free',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      Icon(
                        Icons.navigate_next,
                        color:   Color.fromARGB(176, 21, 101, 192),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const Transactions())
                    );
                  },
                  child:const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.history,
                            color:   Color.fromARGB(176, 21, 101, 192),
                          ),

                          SizedBox(width: 15,),

                          Text(
                            'See transaction history',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      Icon(
                        Icons.navigate_next,
                        color:   Color.fromARGB(176, 21, 101, 192),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const Balance())
                    );
                  },
                  child:const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_balance_outlined,
                            color:   Color.fromARGB(176, 21, 101, 192),
                          ),

                          SizedBox(width: 15,),

                          Text(
                            'Check bank balance',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      Icon(
                        Icons.navigate_next,
                        color:   Color.fromARGB(176, 21, 101, 192),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          const Text(
            'Showing businesses based on your location - Learn more',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white70,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }
}
