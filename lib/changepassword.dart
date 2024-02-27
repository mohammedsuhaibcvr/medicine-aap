import 'package:flutter/material.dart';
import 'package:pills/signup%20padge.dart';

class Cpass extends StatelessWidget {
  Cpass({super.key});
  final newpasswordController = TextEditingController();
  final reenterpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Color.fromARGB(255, 78, 97, 207),
            Color.fromARGB(255, 35, 61, 206),
          ],
          tileMode: TileMode.mirror,
        )),
        child: Column(
          children: [
            const SafeArea(
                child: Padding(
              padding: EdgeInsets.only(left: 20, top: 100),
              child: SizedBox(height: 150, width: 150, child: CircleAvatar()),
            )),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextFormField(
                  controller: newpasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter valid email";
                    }
                    if (value.isNotEmpty) {
                      String pass =
                          r'^(?=.[a-z])(?=.[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$';
                      RegExp regExp = RegExp(pass);
                      if (!regExp.hasMatch(value)) {
                        return "enter valid password";
                      } else {
                        return null;
                      }
                    }
                    return "";
                  },
                  decoration: const InputDecoration(
                      hintText: "enter new password",
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            const SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "enter  agin", border: OutlineInputBorder()),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Signpage()));
              },
              child: const Text("submit"),
            ),
          ],
        ),
      ),
    );
  }
}
