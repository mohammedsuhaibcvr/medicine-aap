import 'package:flutter/material.dart';
import 'package:flutter_timeline_calendar/timeline/flutter_timeline_calendar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
                width: double.infinity,
                height: 260,
                color: const Color.fromARGB(255, 249, 121, 163),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: CircleAvatar(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 9, left: 1),
                                child: Text(
                                  "KILLER",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3, top: 4),
                                child: Text(
                                  "WHALES",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 50, left: 10),
                          child: Text(
                            "CREATE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            "NEW SCHEDULE",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Positioned(
              top: 230,
              child: Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TimelineCalendar(
                        calendarType: CalendarType.GREGORIAN,
                        calendarLanguage: "en",
                        calendarOptions: CalendarOptions(
                            viewType: ViewType.DAILY,
                            headerMonthElevation: 0,
                            headerMonthBackColor: Colors.transparent),
                      ),
                    ),
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
