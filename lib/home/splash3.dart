import 'package:flutter/material.dart';
import 'package:pills/home/sp4.dart';
import 'package:pills/home/splash2.dart';
import 'package:pills/shopkepper/shoplogin/login.dart';


class SpThree extends StatelessWidget {
  const SpThree({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
            double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 59, 97),
      body: Container(
         height: double.infinity,
        width: double.infinity,
         decoration: const BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment(0.8, 1),
      colors: <Color>[
        Color(0xFFC5CAE9),
        Color(0xFF9FA8DA),
        Color(0xFF7986CB),
        Color(0xFF5C6BC0),
        Color(0xFF3F51B5),
      ],
      tileMode: TileMode.mirror,
        )),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: screenheight * .19,
              ),
              const CircleAvatar(
                 backgroundColor: Colors.transparent,
                radius: 90,
                backgroundImage: AssetImage("asset/medical.png",),
              ),
              SizedBox(
                height: screenheight * .03,
              ),
              Text(
                "PHARMACY",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900]),
              ),
              SizedBox(
                height: screenheight * .01,
              ),
              const Text(
                "Sell your Medicines",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              // const Text(
              //   "with your loved ones",
              //   style: TextStyle(fontSize: 17, color: Colors.white),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // const Text(
              //   "It's easy and simple ",
              //   style: TextStyle(fontSize: 15, color: Colors.black87),
              // ),
              SizedBox(
                height: screenheight * .09,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.grey[400]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.grey[400]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.green),
                    ),
                  ),

                   Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.grey[400]),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: screenheight * .06,
              ),
              SizedBox(
                height: 40,
                width: 140,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.teal[500]),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const SpFour()));
                  },
                  label: const Text(
                    "Next",
                    style: TextStyle(fontSize: 16),
                  ),
                  icon: const Icon(
                    Icons.chevron_right_sharp,
                    size: 28,
                  ),
                ),
              ),
              SizedBox(
                height: screenheight * .02,
              ),
             
              SizedBox(
                height: 40,
                width: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.teal[500]),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SpTwo()));
                  }, 
                  child:const Icon(Icons.chevron_left,size: 28,color: Colors.white,)
                  ),
              ),

             SizedBox(
                height: screenheight * .02,
              ),

              SizedBox(
                height: 40,
                width: 140,
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.teal[500]),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ShopLoginPage()));
                  }, 
                  child:const Text("Login/SignUp",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
