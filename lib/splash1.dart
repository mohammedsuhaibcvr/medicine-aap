import 'package:flutter/material.dart';
import 'package:pills/splash2.dart';
import 'package:pills/splash3.dart';

class SpOne extends StatelessWidget {
  const SpOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 140,
            ),
            const CircleAvatar(
              radius: 90,
              child: Image(image: AssetImage("asset/Doctors.jpg"))
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Set Reminders.",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900]),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Never forget to take ",
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            const Text(
              "your medicines on time.",
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.green),
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
                        color: Colors.grey[400]),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 40,
              width: 120,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.teal[500]),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SpTwo()));
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
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SpThree()));
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ))
          ],
        ),
     ),
);
}
}