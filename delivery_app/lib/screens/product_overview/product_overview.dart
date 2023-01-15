import 'package:delivery_app/confiq/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

enum SingingCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final String productName;
  final String productImage;
  ProductOverview({required this.productName, required this.productImage});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SingingCharacter? _character = SingingCharacter.fill;
  Widget bottomNavigatorbar(
      {Color? iconColor,
      Color? backgroundColor,
      Color? color,
      String? title,
      IconData? iconData}) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 17,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title!,
              style: TextStyle(color: color),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigatorbar(
              backgroundColor: textColor,
              color: Colors.white70,
              iconColor: Colors.grey,
              title: "Add to Wishlist",
              iconData: Icons.favorite_outline),
          bottomNavigatorbar(
              backgroundColor: primaryColor,
              color: textColor,
              iconColor: Colors.white70,
              title: "Go to Cart",
              iconData: Icons.shop_outlined),
        ],
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "Product Overview",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.productName),
                    subtitle: Text("\$50"),
                  ),
                  Container(
                    height: 250,
                    padding: EdgeInsets.all(40),
                    child: Image.asset(widget.productImage),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Text(
                      "Available Option ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],
                            ),
                            Radio(
                              value: SingingCharacter.fill,
                              activeColor: Colors.green[700],
                              onChanged: (value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                              groupValue: _character,
                            )
                          ],
                        ),
                        Text("\$50"),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 15,
                                  color: primaryColor,
                                ),
                                Text(
                                  "ADD",
                                  style: TextStyle(color: primaryColor),
                                )
                              ]),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About this Product",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Basil is an herb in the mint family. It adds flavor to meals, and its nutrients may provide health benefits",
                  style: TextStyle(
                    fontSize: 16,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
