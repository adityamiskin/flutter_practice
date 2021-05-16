import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app_emojis/foodTabs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'burgerPage.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
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
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 6,
                        spreadRadius: 4,
                        offset: Offset(0.0, 3.0),
                      )
                    ],
                    color: Color(0xFFC6E7FE),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/tuxedo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'SEARCH FOR',
              style: GoogleFonts.notoSans(
                  fontSize: 27, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'RECIPES',
              style: GoogleFonts.notoSans(
                  fontSize: 27, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Container(
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: GoogleFonts.notoSans(fontSize: 14),
                  border: InputBorder.none,
                  fillColor: Colors.grey.withOpacity(0.5),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'Recommended',
              style: GoogleFonts.notoSans(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildListItem('Hamburger', 'assets/burger.png', '21',
                    Color(0xFFFFE9C6), Color(0xFFDA9551)),
                _buildListItem('Chips', 'assets/fries.png', '15',
                    Color(0xFFC2E3FE), Color(0xFF6A8CAA)),
                _buildListItem('Donuts', 'assets/doughnut.png', '15',
                    Color(0xFFD7FADA), Color(0xFF56CC7E)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.black, width: 2)),
              controller: tabController,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              unselectedLabelStyle: GoogleFonts.notoSans(
                  fontSize: 14.0, fontWeight: FontWeight.w500),
              labelStyle: GoogleFonts.notoSans(
                  fontSize: 16, fontWeight: FontWeight.w800),
              tabs: [
                Tab(child: Text('FEATURED')),
                Tab(child: Text('COMBO')),
                Tab(child: Text('FAVOURITES')),
                Tab(child: Text('RECOMMENDED')),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 450,
            child: TabBarView(
              controller: tabController,
              children: [
                FoodTabs(),
                FoodTabs(),
                FoodTabs(),
                FoodTabs(),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildListItem(String foodName, String imgPath, String price, Color bgColor,
      Color textColor) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {
          //TODO
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BurgerPage(
                heroTag: foodName,
                foodName: foodName,
                pricePerItem: price,
                imgPath: imgPath,
              ),
            ),
          );
        },
        child: Container(
          height: 175,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: bgColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: foodName,
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      imgPath,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                foodName,
                style: GoogleFonts.notoSans(fontSize: 17, color: textColor),
              ),
              Text(
                '\$' + price,
                style: GoogleFonts.notoSans(fontSize: 17, color: textColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
