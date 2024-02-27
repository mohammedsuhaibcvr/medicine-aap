import 'package:flutter/material.dart';

class Setmedication extends StatelessWidget {
  const Setmedication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 2, left: 10, right: 10),
              child: Container(
                height: 750,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
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
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.network(
                          "https://cdn3.iconfinder.com/data/icons/healthcare-37/64/reminder-pills-512.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        "set up medications",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 45),
                          child: Image.network(
                            "https://cdn4.iconfinder.com/data/icons/flu/1000/Flu-06-64.png",
                            color: Color.fromARGB(255, 17, 103, 20),
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 14),
                          child: Text(
                            "Track all your medications in \n one place",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 45),
                          child: Image.network(
                            "https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/alarm_clock-64.png",
                            color: Color.fromARGB(255, 17, 103, 20),
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 14),
                          child: Text(
                            "Set a Schedule and get reminders",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 45),
                          child: Image.network(
                            "https://cdn1.iconfinder.com/data/icons/ionicons-outline-vol-2/512/warning-outline-64.png",
                            color: Color.fromARGB(255, 17, 103, 20),
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 14),
                          child: Text(
                            "Learn about potential intractions\n between medications your list",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 60,
                        left: 5,
                      ),
                      child: SizedBox(
                        width: 250,
                        
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              ),
                              backgroundColor:
                                  Color.fromARGB(255, 17, 213, 141),
                            ),
                            onPressed: () {},
                            child: Text("Add a medications")),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
