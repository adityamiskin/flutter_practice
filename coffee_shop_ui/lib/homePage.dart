import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detailsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Time for Coffee!',
          style: TextStyle(
            fontFamily: 'varela',
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF473D3A),
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.menu),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 15),
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Welcome, Aditya',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/model.jpg'),
                  radius: 30,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(right: 45.0),
            child: Text(
              'Let\'s select the best taste for your next coffee break!',
              style: TextStyle(
                fontFamily: 'nunito',
                fontWeight: FontWeight.w300,
                fontSize: 17,
                color: Color(0xFFB0AAA7),
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Taste of the week',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'varela',
                  color: Color(0xFF473D3A),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'varela',
                    color: Color(0xFFCEC7C4),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 410,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _coffeeListCard(
                  'assets/starbucks.png',
                  'Caffe Misto',
                  'Coffeeshop',
                  'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                  '\$4.99',
                  isFavorite,
                ),
                _coffeeListCard(
                    'assets/starbucks.png',
                    'Caffe Latte',
                    'BrownHouse',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    '\$3.99',
                    isFavorite),
              ],
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore Nearby',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color: Color(0xFF473D3A),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 15.0,
                    color: Color(0xFFCEC7C4),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildImage('assets/coffee.jpg'),
                _buildImage('assets/coffee2.jpg'),
                _buildImage('assets/coffee3.jpg'),
              ],
            ),
          )
        ],
      ),
    );
  }

  _coffeeListCard(String imgPath, String productName, String shopName,
      String desc, String price, bool isFavorite) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Container(
        height: 300,
        width: 225,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 335,
                ),
                Positioned(
                  top: 75,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    height: 260,
                    width: 225,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFDAB68C),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 60),
                        Text(
                          shopName + '\'s',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          productName,
                          style: TextStyle(
                              fontFamily: 'varela',
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          desc,
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              // fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              price,
                              style: TextStyle(
                                fontFamily: 'varela',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3A4742),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: IconButton(
                                  iconSize: 15,
                                  icon: Icon(Icons.favorite),
                                  color: isFavorite ? Colors.red : Colors.grey,
                                  onPressed: () {
                                    setState(() {
                                      isFavorite = true;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 25,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailsPage()));
              },
              child: Container(
                height: 50,
                width: 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFF473D3A),
                ),
                child: Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildImage(String imgPath) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 15),
      child: Container(
        height: 100,
        width: 175,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
