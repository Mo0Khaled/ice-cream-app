import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icecreamapp/screens/details.dart';

class IceCream extends StatefulWidget {
  @override
  _IceCreamState createState() => _IceCreamState();
}

class _IceCreamState extends State<IceCream> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Wrap(
          children: <Widget>[
            getIceCreamCard('assets/images/ice_cream1.png', 'Cone Ice Cream',
                '5', false, "1 Serving (150kg , 100kg)"),
            getIceCreamCard('assets/images/ice_cream2.png', 'Cup Ice Cream',
                '1', true, "1 Serving (140kg , 110kg)"),
            getIceCreamCard('assets/images/ice_cream3.png', 'Small Ice Cream',
                '6', false, "1 Serving (200kg , 100kg)"),
            getIceCreamCard('assets/images/ice_cream4.png', 'Black Ice Cream',
                '10', false, "1 Serving (150kg , 500kg)"),
          ],
        ),
      ],
    );
  }

  Widget getIceCreamCard(
      String img, String name, String price, bool isFav, String weight) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                heroTag: img,
                foodPrice: price,
                foodName: name,
                weight: weight,
              ),
            ),
          );
        },
        child: Container(
          height: 285,
          width: (MediaQuery.of(context).size.width / 2) - 30,
          decoration: BoxDecoration(
            color: Color(0xFFFFECF8),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2.0,
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2.0),
            ],
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 190.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Hero(
                          tag: img,
                          child: Image(
                            image: AssetImage(img),
                            fit: BoxFit.contain,
                            height: 190,
                            width: 200,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: isFav
                          ? Icon(Icons.favorite, color: Colors.red)
                          : Icon(
                              Icons.favorite_border,
                              color: Color(0xFFFFA3DE),
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Text(
                name,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "SourceSansPro",
                  letterSpacing: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '\$' + price,
                      style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  FlatButton(
                    splashColor: Color(0xFFFFA3DE),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            heroTag: img,
                            foodPrice: price,
                            foodName: name,
                            weight: weight,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFFFA3DE),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        "View",
                        style: TextStyle(
                          fontFamily: "SourceSansPro",
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
