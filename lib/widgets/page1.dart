// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 240, 243),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //to insert image

              //  Image(image: AssetImage('images/phar-removebg.png')),
              Icon(
                Icons.phone_android,
                size: 150,
                color: Color.fromARGB(255, 215, 216, 207),
              ),

              SizedBox(
                height: 100,
              ),

              Text(
                'FIND THE BEST', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  
                ),
              ),
              Text(
                'NEAREST SERVICE', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      'Find the nearest pharmacies',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(0.0),
                     child: Text(
                        'just by the search of your medecine',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                   ),
                ],
              ),
              SizedBox(
                height: 50,
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                            //fontSize: 12
                            ),
                      ),
                      onPressed: () {},
                      child: Text('Get Started'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              
            ],
          ),
        ));
  }
}
