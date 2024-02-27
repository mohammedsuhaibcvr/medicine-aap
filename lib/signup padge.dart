import 'package:flutter/material.dart';

class Signpage extends StatelessWidget {
  const Signpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
         decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xFFC5CAE9),
            Color(0xFF9FA8DA),
            Color(0xFF7986CB),
            Color.fromARGB(255, 78, 97, 207),
            Color.fromARGB(255, 35, 61, 206),
          ],
          tileMode: TileMode.mirror,
        )),
        child:  const SizedBox(height: double.infinity,
        width: double.infinity,

          child: Padding(
            padding:  EdgeInsets.only(left: 1,
            right: 200,
            top: 150,
            ),
            child: Column(
              children: [
                Text("Create ",
                style: TextStyle(fontSize: 40,
                color: Colors.white),
                ),
                Text("Account",
                style: TextStyle(fontSize: 40,
                color: Colors.white),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "@gmail.com",
                    border: OutlineInputBorder()
      
                  ),
                  
                )
              ],
            ),
          ),
          ),

        
      ),
      
      
    );
  }
}