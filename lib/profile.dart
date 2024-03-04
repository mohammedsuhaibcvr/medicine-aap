import 'package:flutter/material.dart';
import 'package:pills/changepass.dart';
import 'package:pills/editprofile.dart';

import 'package:pills/loginpage.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
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
            Color(0xFF5C6BC0),
            Color(0xFF3F51B5),
          ],
          tileMode: TileMode.mirror,
        )),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 21),
            ),
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                        clipBehavior: Clip.hardEdge,
                        title: Image.asset(
                          "asset/Docotrs.jpg",
                          fit: BoxFit.cover,
                        )),
                  );
                },
                child: const CircleAvatar(
                  radius: 57,
                  backgroundImage: AssetImage("asset/Doctors.jpg"),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Suhaib Malik",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "suhaibmalik@gmail.com",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "7510115506",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "kochi , Kakkanad",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 130,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.transparent,
                      elevation: 1),
                  //
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfile()));
                  },
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                width: 310,
                height: 55,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1,
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangePass()));
                    },
                    icon: const Icon(
                      Icons.key,
                      size: 30,
                      color: Colors.black,
                    ),
                    label:  Row(
                      children: [
                      const  SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "Change Password",
                          style: TextStyle(
                            color: Colors.black,
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(width:screenwidth*0.15),
                       const Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.black
                        )
                      ],
                    ))),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 310,
                height: 55,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1,
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage( )
                          ),
                          );
                    },
                    icon: const Icon(
                      Icons.logout,
                      size: 30,
                      color: Colors.black,
                    ),
                    label:  Row(
                      children: [
                       const SizedBox(
                          width: 8,
                        ),
                       const Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.black,
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox
                        (width:screenwidth*0.34
                        ),
                       const Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                          size: 30,
                        )
                      ],
                    ))),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 310,
                height: 55,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1,
                        backgroundColor: Colors.transparent),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_forever,
                      size: 30,
                      color: Colors.red,
                    ),
                    label:  Row(
                      children: [
                       const SizedBox(
                          width: 8,
                        ),
                      const  Text(
                          "Delete Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 16),
                      ),
                 SizedBox(
                  width: screenwidth*0.2,
                  ),
                  const Icon(
                 Icons.arrow_forward,
                 size: 30,
                  color: Colors.red,
                )
             ],
           ))),
          ],
        ),
      )
    );
  }
}
