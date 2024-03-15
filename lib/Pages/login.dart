import 'package:flutter/material.dart';
import 'package:google_pay/Pages/home_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String selectedValue = 'English';
  String selectedCountry = 'India';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding:const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.0),
                      
                    ),
                    child: DropdownButton(
                      isDense: true,
                      elevation: 0,
                      enableFeedback: false,
                      underline: Container(
                        height: 0,
                      ),
                      icon:const Icon(Icons.language),
                      value: selectedValue,
                      items:const [
                        DropdownMenuItem(
                          value: 'Arabic',
                          child: Text('Arabic'),
                        ),
                        
                        DropdownMenuItem(
                          value: 'English',
                          child: Text('English'),
                        ),
                  
                        DropdownMenuItem(
                          value: 'Hindi',
                          child: Text('Hindi'),
                        ),
                  
                        DropdownMenuItem(
                          value: 'Spanish',
                          child: Text('Spanish'),
                        ),
                        
                      ], 
                      onChanged: (value){
                        setState(() {
                          selectedValue = value!;
                        });
                      },
                    ),
                  ),
      
                  const SizedBox(width: 10,),
        
                  // Country
                  Container(
                    padding:const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.0),
                      
                    ),
                    child: DropdownButton(
                      isDense: true,
                      elevation: 0,
                      enableFeedback: false,
                      underline: Container(
                        height: 0,
                      ),
                      icon:const Icon(Icons.flag),
                      value: selectedCountry,
                      items:const [
                        DropdownMenuItem(
                          value: 'Australia',
                          child: Text('Australia'),
                        ),
                        
                        DropdownMenuItem(
                          value: 'India',
                          child: Text('India'),
                        ),
                  
                        DropdownMenuItem(
                          value: 'Canada',
                          child: Text('Canada'),
                        ),
                  
                        DropdownMenuItem(
                          value: 'United State',
                          child: Text('United State'),
                        ),
                        
                      ], 
                      onChanged: (value){
                        setState(() {
                          selectedCountry = value!;
                        });
                      },
                    ),
                  ),
      
                  // PopupMenuButton 
                  PopupMenuButton(
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          value: 'General',
                          child: const Text('General'),
                          onTap: () {
                            
                          },
                        ),
      
                        PopupMenuItem(
                          value: 'Help',
                          child: const Text('Help'),
                          onTap: () {
                            
                          },
                        ),
                        PopupMenuItem(
                          value: 'Privacy',
                          child: const Text('Privacy'),
                          onTap: () {
                            
                          },
                        ),
                      ];
                    },
                  ),
                ],
              ),
              
              const SizedBox(height: 30,),
      
              Image.asset(
                'assets/google_pay.png',
                width: 50,
              ),
      
              const Text(
                'Welcome to Google Pay',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
      
              const Text(
                'Enter your phone number',
                style: TextStyle(
                  
                ),
              ),
      
              const SizedBox(height: 10,),
              //TextField
      
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1,color: Colors.grey),
                    
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.blue)
                  ),
                  hintText: 'Phone Number',
                ),
              ),
      
              const Spacer(),
      
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                      context, 
                      MaterialPageRoute(builder: (context)=>const TermPage(),
                      ),
                    );
                  },
              
                  style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                   )
                  ),
                  child:const Text('Next'),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class TermPage extends StatelessWidget {
  const TermPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                // PopupMenuButton
                PopupMenuButton(
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 'General',
                        child: const Text('General'),
                        onTap: () {
                          
                        },
                      ),
      
                      PopupMenuItem(
                        value: 'Help',
                        child: const Text('Help'),
                        onTap: () {
                          
                        },
                      ),
                      PopupMenuItem(
                        value: 'Privacy',
                        child: const Text('Privacy'),
                        onTap: () {
                          
                        },
                      ),
                    ];
                  },
                ),
              ],
            ),


            const Spacer(),

            const Text(
              
              "Accept and continue typically refers to agreeing to terms or conditions and proceeding forward. Here's a succinct version.",
              textAlign: TextAlign.center,
              style: TextStyle(

              ),
            ),

            const SizedBox(height: 20,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: (context)=>const HomePage(),
                    ),
                  );
                },
            
                style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                 )
                ),
                child:const Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}