import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BurgerPage extends StatefulWidget {
  static String id = 'burger-page';
  final imgPath, foodName, pricePerItem, heroTag;
  BurgerPage({this.foodName, this.heroTag, this.imgPath, this.pricePerItem});

  @override
  _BurgerPageState createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  var netPrice = 0.0;
  var quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                ),
                Stack(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      color: Colors.transparent,
                    ),
                    Container(
                      child: Center(
                        child: Icon(Icons.shopping_cart, color: Colors.white),
                      ),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0xFFFE7D6A).withOpacity(0.3),
                          blurRadius: 6,
                          spreadRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ], color: Color(0xFFFE7D6A), shape: BoxShape.circle),
                    ),
                    Positioned(
                      top: 1,
                      right: 4,
                      child: Container(
                        child: Center(
                          child: Text(
                            '1',
                            style: GoogleFonts.notoSans(
                                fontSize: 7,
                                textStyle: TextStyle(color: Color(0xFFFE7D6A))),
                          ),
                        ),
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'SUPER\n${widget.foodName}'.toUpperCase(),
              style: GoogleFonts.notoSans(
                  fontSize: 27, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: widget.heroTag,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.imgPath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  PhysicalModel(
                    color: Color.fromRGBO(250, 250, 250, 0.1),
                    shadowColor: Color(0xFFFE7D6A).withOpacity(0.3),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(40),
                    shape: BoxShape.circle,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.transparent),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite_border,
                          color: Color(0xFFFE7D6A),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35.0),
                  PhysicalModel(
                    color: Color.fromRGBO(250, 250, 250, 0.1),
                    shadowColor: Color(0xFFFE7D6A).withOpacity(0.4),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.circle,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.transparent),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.restore,
                          color: Color(0xFFFE7D6A),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70.0,
                width: 125.0,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    '\$' +
                        (int.parse(widget.pricePerItem) * quantity).toString(),
                    style: GoogleFonts.notoSans(
                        fontSize: 40.0,
                        color: Color(0xFF5E6166),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: 60.0,
                width: 225.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFE7D6A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        height: 40.0,
                        width: 105.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              iconSize: 17.0,
                              icon:
                                  Icon(Icons.remove, color: Color(0xFFFE7D6A)),
                              onPressed: () {
                                adjustQuantity('MINUS');
                              },
                            ),
                            Text(
                              quantity.toString(),
                              style: GoogleFonts.notoSans(
                                fontSize: 14.0,
                                color: Color(0xFFFE7D6A),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            IconButton(
                                iconSize: 17.0,
                                icon: Icon(Icons.add, color: Color(0xFFFE7D6A)),
                                onPressed: () {
                                  adjustQuantity('PLUS');
                                }),
                          ],
                        )),
                    Text(
                      'Add to cart',
                      style: GoogleFonts.notoSans(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'FEATURED',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          Container(
            height: 225,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [_buildListItem('1'), _buildListItem('2')],
            ),
          )
        ],
      ),
    );
  }

  adjustQuantity(pressed) {
    switch (pressed) {
      case 'PLUS':
        setState(() {
          quantity += 1;
        });
        return;
      case 'MINUS':
        setState(() {
          if (quantity != 0) {
            quantity -= 1;
          }
        });
        return;
    }
  }

  _buildListItem(String columnNumber) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          //Don't do this in a real app.
          if (columnNumber == '1')
            _buildColumnItem(
                'assets/cheese.png', 'Sweet cheese', '11', Color(0xFFFBD6F5)),
          if (columnNumber == '1') SizedBox(height: 15.0),
          if (columnNumber == '1')
            _buildColumnItem(
                'assets/popcorn.png', 'Sweet popcorn', '11', Color(0xFFFBD6F5)),
          if (columnNumber == '2')
            _buildColumnItem(
                'assets/taco.png', 'Tacos', '6', Color(0xFFC2E3FE)),
          if (columnNumber == '2') SizedBox(height: 15.0),
          if (columnNumber == '2')
            _buildColumnItem(
                'assets/sandwich.png', 'Sandwich', '6', Color(0xFFD7FADA)),
        ],
      ),
    );
  }

  _buildColumnItem(
      String imgPath, String foodName, String price, Color bgColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 210.0,
          child: Row(
            children: [
              Container(
                height: 75.0,
                width: 75.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0), color: bgColor),
                child: Center(
                  child: Image.asset(imgPath, height: 50.0, width: 50.0),
                ),
              ),
              SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodName,
                    style: GoogleFonts.notoSans(
                        fontSize: 14.0, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$' + price,
                    style: GoogleFonts.lato(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      textStyle: TextStyle(
                        color: Color(0xFFF68D7F),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
