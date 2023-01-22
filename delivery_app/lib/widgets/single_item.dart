import 'package:delivery_app/confiq/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingleItem extends StatelessWidget {
  bool isBool = false;
  SingleItem({required this.isBool});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  child: Center(
                    child: Image.asset("images/basil.png"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: isBool == false
                        ? MainAxisAlignment.spaceAround
                        : MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Product Name",
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\$ 50 Gram",
                            style: TextStyle(
                              color: textColor,
                            ),
                          ),
                        ],
                      ),
                      isBool == false
                          ? Container(
                              margin: EdgeInsets.only(right: 15),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "50 Gram",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    size: 20,
                                    color: primaryColor,
                                  )
                                ],
                              ),
                            )
                          : Text("50 gram"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  padding: isBool == false
                      ? EdgeInsets.symmetric(horizontal: 15, vertical: 32)
                      : EdgeInsets.only(left: 15, right: 15),
                  child: isBool == false
                      ? Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                Text(
                                  "ADD",
                                  style: TextStyle(color: primaryColor),
                                )
                              ],
                            ),
                          ),
                        )
                      : Column(
                          children: [
                            Icon(
                              Icons.delete,
                              size: 30,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 25,
                              width: 75,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                    Text(
                                      "ADD",
                                      style: TextStyle(color: primaryColor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
        isBool == false
            ? Container()
            : Divider(
                height: 1,
                color: Colors.black45,
              ),
      ],
    );
  }
}
