import 'package:flutter/material.dart';
import 'package:icecreamapp/screens/ice_cream_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xFFFFA3DE),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 50, right: 10, bottom: 50),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/images/IMG_3701.JPG"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Mohamed",
                        style: TextStyle(
                          fontFamily: "SourceSansPro",
                          color: Colors.white,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                buildDrawer(icon: Icons.create, title: "Ice Cream"),
                SizedBox(
                  height: 20,
                ),
                buildDrawer(icon: Icons.wc, title: "Drink"),
                SizedBox(
                  height: 20,
                ),
                buildDrawer(icon: Icons.shopping_cart, title: "Cart"),
                SizedBox(
                  height: 20,
                ),
                buildDrawer(icon: Icons.person_pin, title: "Profile"),
                SizedBox(
                  height: 20,
                ),
                buildDrawer(icon: Icons.settings, title: "Setting"),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Home",
          style: TextStyle(
            fontFamily: "SourceSansPro",
            fontSize: 30,
            fontWeight: FontWeight.w500,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/images/IMG_3701.JPG"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    right: 25,
                    left: 25,
                    bottom: 25,
                  ),
                  child: Container(
                    height: 45,
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  unselectedLabelColor: Colors.grey.withOpacity(0.3),
                  indicatorColor: Color(0xFFFFA3DE),
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Tab(
                        child: Text(
                          "Ice Cream",
                          style: TextStyle(
                            fontFamily: "SourceSansPro",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Tab(
                        child: Text(
                          "Milkshake",
                          style: TextStyle(
                            fontFamily: "SourceSansPro",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Tab(
                        child: Text(
                          "Chocolate",
                          style: TextStyle(
                            fontFamily: "SourceSansPro",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 200.0,
                  padding: EdgeInsets.only(bottom: 30),
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      IceCream(),
                      IceCream(),
                      IceCream(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildDrawer({IconData icon, String title}) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: "SourceSansPro",
            color: Colors.white,
            letterSpacing: 1,
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
