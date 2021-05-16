import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iris_mockup/tabView.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        body: Stack(
          children: [
            ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  color: Color.fromRGBO(33, 33, 33, 1),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30, top: 10, bottom: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(140, 140, 140, 1),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color.fromRGBO(140, 140, 140, 1),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    height: 50,
                    child: TabBar(
                      onTap: (currentIndex) {
                        setState(() {
                          tabController.index = currentIndex;
                        });
                      },
                      indicatorColor: Colors.transparent,
                      controller: tabController,
                      isScrollable: true,
                      tabs: [
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: (tabController.index == 0
                                ? Color.fromRGBO(103, 111, 210, 1)
                                : Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Icon(
                                  FontAwesomeIcons.university,
                                  color: Colors.white,
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Institute',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: (tabController.index == 1
                                ? Color.fromRGBO(103, 111, 210, 1)
                                : Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Icon(
                                    Icons.school,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Academics',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: (tabController.index == 2
                                ? Color.fromRGBO(103, 111, 210, 1)
                                : Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Icon(
                                    FontAwesomeIcons.building,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Campus',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 300,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: ListView(
                          children: ListTile.divideTiles(
                            color: Color.fromRGBO(39, 39, 39, 1),
                            context: context,
                            tiles: [
                              ListTile(
                                title: Text(
                                  'No Dues',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: ListView(
                          children: ListTile.divideTiles(
                            color: Color.fromRGBO(39, 39, 39, 1),
                            context: context,
                            tiles: [
                              ListTile(
                                title: Text(
                                  'My Courses And Exam Grades',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'My Attendance',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'My Grade Card',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: ListView(
                          children: ListTile.divideTiles(
                            color: Color.fromRGBO(39, 39, 39, 1),
                            context: context,
                            tiles: [
                              ListTile(
                                title: Text(
                                  'Infrastructure Booking',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  '',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            HelpButton(),
          ],
        ),
      ),
    );
  }
}
