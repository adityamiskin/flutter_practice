import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'imagePage.dart';
import 'package:iris_mockup/tabView.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  static String id = "home-page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  String url = 'https://cutt.ly/RvaNEMO';
  String progress = '78';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(33, 33, 33, 1),
          title: Text(
            'P   I   R   I   S',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        'View Details',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueAccent,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    height: 135,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(29, 29, 29, 1),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ImagePage(),
                                ),
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 12),
                              child: Container(
                                height: 150,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(url),
                                  radius: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      'Aditya Miskin',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      'B Tech, 2nd Year',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      'Electronics and Communication Engineering',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5, top: 10),
                                    child: Text(
                                      'Block I - Room Number 50',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    _buildCard(Icons.book, '42', 'Credits', Colors.purple),
                    _buildCard(
                        Icons.graphic_eq, '11', 'CGPA', Colors.pinkAccent),
                    _buildCard(Icons.ac_unit_outlined, '4th', 'Semester',
                        Colors.tealAccent),
                  ],
                ),
                SizedBox(height: 20),
                TabBar(
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(110, 110, 180, 1), width: 2),
                  ),
                  tabs: [
                    Text(
                      'Attendence',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Courses',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  height: 300,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      ListView(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15),
                            child: Container(
                              height: 110,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(29, 29, 29, 1),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 20),
                                    child: Text(
                                      'Last Marked on : Date',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10),
                                    child: Text(
                                      'EC340 - Computer Organization and Architecture',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 5, bottom: 5),
                                    child: Text(
                                      progress + '%',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(75, 175, 75, 1),
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  LinearPercentIndicator(
                                    width: 370,
                                    lineHeight: 4,
                                    percent: 0.78,
                                    backgroundColor:
                                        Color.fromRGBO(25, 25, 25, 1),
                                    progressColor:
                                        Color.fromRGBO(75, 175, 75, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      ListView(
                        children: [
                          _buildCourse('EC206'),
                          _buildCourse('EC208'),
                          _buildCourse('EC210'),
                          _buildCourse('EC211'),
                          _buildCourse('EC209'),
                          _buildCourse('EC340'),
                          _buildCourse('EC280'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            HelpButton(),
          ],
        ),
      ),
    );
  }

  _buildCard(IconData icon, String s, String t, Color color) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(29, 29, 29, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 80,
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 40),
              child: Container(
                child: Icon(
                  icon,
                  color: color,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      s,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    t,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildCourse(String subject) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Row(
        children: [
          Container(
            width: 380,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromRGBO(29, 29, 29, 1),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 15),
                        child: Text(
                          subject,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Color.fromRGBO(75, 175, 75, 1),
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        'Approved',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color.fromRGBO(75, 175, 75, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Course Instructor',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(width: 30),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Color.fromRGBO(75, 175, 75, 1),
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        'Approved',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color.fromRGBO(75, 175, 75, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Falculty Advisor',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromRGBO(16, 166, 11, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
