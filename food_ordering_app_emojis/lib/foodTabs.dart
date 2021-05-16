import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FoodTabs extends StatefulWidget {
  @override
  _FoodTabsState createState() => _FoodTabsState();
}

class _FoodTabsState extends State<FoodTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildListItem('Delicious hot dog', 4.0, '6', 'assets/hotdog.png'),
          _buildListItem('Cheese pizza', 5.0, '12', 'assets/pizza.png'),
        ],
      ),
    );
  }
}

_buildListItem(String foodName, rating, String price, String imgPath) {
  return Padding(
    padding: EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 210,
          child: Row(
            children: [
              Container(
                height: 73,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xFFFFE3DF),
                ),
                child: Center(
                  child: Image.asset(imgPath, height: 50.0, width: 50.0),
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodName,
                    style: GoogleFonts.notoSans(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SmoothStarRating(
                    allowHalfRating: false,
                    onRated: (v) {},
                    starCount: rating.toInt(),
                    rating: rating,
                    color: Color(0xFFFFD143),
                    borderColor: Color(0xFFFFD143),
                    size: 15,
                    spacing: 0,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$' + price,
                        style: GoogleFonts.lato(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            textStyle: TextStyle(color: Color(0xFFF68D7F))),
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        '\$' + '18',
                        style: GoogleFonts.lato(
                            fontSize: 12.0,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w600,
                            textStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.4))),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          heroTag: foodName,
          mini: true,
          backgroundColor: Color(0xFFFE7D6A),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
