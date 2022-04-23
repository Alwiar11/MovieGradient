import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                    Color.fromARGB(90, 255, 83, 189),
                  Color.fromARGB(90, 10, 252, 212)
                ]
              )
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter'
              ),
              
            ),
            
          )
        ],
        
      ),
      
    );

    
  }
}