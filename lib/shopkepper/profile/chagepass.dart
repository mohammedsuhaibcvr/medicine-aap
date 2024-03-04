import 'package:flutter/material.dart';

import 'package:pills/profile.dart';

class ShopChangePass extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPass = TextEditingController();
   ShopChangePass({super.key});

  @override                                                            
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
          color: Colors.cyan[800]
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
           color: Colors.cyan[800]
           ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                const SizedBox(
                  height: 30,
                ),
               const Text("Change Password",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
               const SizedBox(
                  height: 20,
                ),
               const CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 77,
                    backgroundImage: AssetImage("asset/Doctors.jpg"),
                  ),
                ),
               const SizedBox(
                  height: 50,
                ),
              
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a data";
                        }
                        if (value.isNotEmpty) {
                          String pattern =
                              r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$';
                          RegExp regEx = RegExp(pattern);
                          if (!regEx.hasMatch(value)) {
                            return "enter valid password";
                          } else {
                            return null;
                          }
                        }
                        return null;
                      },
                     decoration:const InputDecoration(
                      labelText: "New Password",
                      labelStyle: TextStyle(
                        color: Colors.white
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),filled: true
                    ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: TextFormField(
                      controller: confirmPass,
                           validator: (value){
                              if (value == null || value.isEmpty) {
                                return 'Empty';
                              }
                              if(value != passwordController.text) {
                                return 'Not Match';
                              }
                              return null;
               },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                        color: Colors.white
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),filled: true
                    ),
                    
                  ),
                ),
               const SizedBox(height: 25,),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      backgroundColor: const Color.fromARGB(255, 57, 144, 182)),
                    onPressed: (){
                      if (_formKey.currentState!.validate()){
                        Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>const Profile()));
                      }
                      
                    },
                   child: const Text("Submit",
                   style: TextStyle(
                    fontSize: 16
                   ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}