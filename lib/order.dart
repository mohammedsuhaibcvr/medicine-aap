import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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

        child: Column(
          children: [
           const Padding(
              padding:  EdgeInsets.only(right: 370,
              top: 40),
              child: Text(
                "order",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w300

                ),
                
              ),
            ),
          const  SizedBox(
              height: 5,
            ),
           const Padding(
              padding:  EdgeInsets.only(left: 30,right: 30,
              top: 50),
              child: TextField(
              
                decoration: InputDecoration(
                  hintText:"medicine name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                
                    
                  ),
                  
                  
            
                ),
              ),
            ),
           const SizedBox(
              height: 50,
            ),
           const Padding(
              padding:  EdgeInsets.only(left: 30,
              right: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "phone number",
                  border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
            
                ),
              ),
            ),
         const  SizedBox(height: 50,),
            const Padding(
              padding:  EdgeInsets.only(left: 30,right: 30),
              child: TextField(maxLines: 6,
                decoration: 
              
              InputDecoration(
                
                hintText: "adress",
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(15))
                )
                
            
              ),
              ),
            ),
           const SizedBox(height: 50,
            ),
            ElevatedButton(onPressed: (){},
             child:const Text("submit"),
             ),
          ],
        ),

      ),

    );
  }
}