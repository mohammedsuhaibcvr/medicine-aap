import 'package:flutter/material.dart';

import 'package:pills/admin.dart/login/home/nav.dart'; 
final _formKey = GlobalKey<FormState>();


class AdminLoginPage extends StatelessWidget {
  AdminLoginPage({super.key});
  
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // double screenwidth = MediaQuery.of(context).size.width;
            double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blueGrey[700]),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(
                  height: screenheight * .20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 170),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 220, top: 10),
                  child: Text(
                    "Back!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                ),
                 SizedBox(
                  height:screenheight * .10
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 45, left: 45, bottom: 15),
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a data";
                      }
                      if (value.isNotEmpty) {
                        String exp = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
                        RegExp regExp = RegExp(exp);
                        String emailID = emailController.text;
                        if (!regExp.hasMatch(emailID)) {
                          return "enter a valid email";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      ),
                        filled: true,
                         labelText: "Email",
                         labelStyle: TextStyle(
                          color: Colors.white
                         ),
                          hintText: "@gmail.com",
                          hintStyle: TextStyle(
                            color: Colors.white
                          )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 45, top: 10),
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
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      ),
                        filled: true,
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                        hintText: "enter password",
                        hintStyle: TextStyle(
                          color: Colors.white
                        )),
                  ),
                ),
                 SizedBox(
                  height: screenheight * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const  EdgeInsets.only(right: 50),
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(90),
                          color: Colors.blueGrey[600]),
                      child: IconButton(
                          onPressed: () {
                            
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const AdminNavBar()));
                            }
                          },
                          icon: const Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 30,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}