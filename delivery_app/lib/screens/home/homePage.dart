import 'package:delivery_app/confiq/colors.dart';
import 'package:delivery_app/screens/home/drawer_side.dart';
import 'package:delivery_app/screens/home/product.dart';
import 'package:delivery_app/screens/product_overview/product_overview.dart';
import 'package:delivery_app/screens/search/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: DrawerSide(),
      appBar: AppBar(
        //to chnage draawer color we use iconTheme
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: primaryColor,
            child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Search()));
              },
              icon: Icon(
                Icons.search,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
              radius: 12,
            ),
          )
        ],
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/vegetables.jpg'),
                ),
                //color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 170, bottom: 20),
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(45),
                                  bottomLeft: Radius.circular(35),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Vegi',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(3, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% Off',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'On all vegetables product',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs Seasonings'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Product(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: "Fresh Basil",
                            productImage: "images/basil.png",
                          ),
                        ),
                      );
                    },
                    productImage: 'images/basil.png',
                    productName: 'Fresh Basil',
                  ),
                  Product(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: "Fresh Mint",
                            productImage: "images/mint2.jpg",
                          ),
                        ),
                      );
                    },
                    productImage: 'images/mint2.jpg',
                    productName: 'Fresh Mint',
                  ),
                  Product(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: "Fresh Prasley",
                            productImage: "images/parsley.png",
                          ),
                        ),
                      );
                    },
                    productImage: "images/parsley.png",
                    productName: "Fresh Prasley",
                  ),
                  Product(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: "Fresh Chives",
                            productImage: "images/chives.png",
                          ),
                        ),
                      );
                    },
                    productImage: 'images/chives.png',
                    productName: 'Fresh Chives',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruits'),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Product(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: "Fresh Mango",
                            productImage: "images/mango.png",
                          ),
                        ),
                      );
                    },
                    productImage: 'images/mango.png',
                    productName: 'Fresh Mango',
                  ),
                  Product(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: "Fresh Orange",
                            productImage: "images/orange.png",
                          ),
                        ),
                      );
                    },
                    productImage: 'images/orange.png',
                    productName: 'Fresh Orange',
                  ),
                  Product(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: "Fresh Mint",
                            productImage: "images/mint2.jpg",
                          ),
                        ),
                      );
                    },
                    productImage: 'images/mint2.jpg',
                    productName: 'Fresh Mint',
                  ),
                  Product(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: "Fresh Mint",
                            productImage: "images/mint2.jpg",
                          ),
                        ),
                      );
                    },
                    productImage: 'images/mint2.jpg',
                    productName: 'Fresh Mint',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
