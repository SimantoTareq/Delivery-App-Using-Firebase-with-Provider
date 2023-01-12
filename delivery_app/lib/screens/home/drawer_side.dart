import 'package:delivery_app/confiq/colors.dart';
import 'package:delivery_app/screens/my_profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({super.key});

  @override
  State<DrawerSide> createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  Widget listTile({IconData? icon, String? title, VoidCallback? onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title!,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffd1ad17),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome Guest'),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(icon: Icons.home, title: "Home"),
            listTile(icon: Icons.shopping_bag_outlined, title: "Review Cart"),
            listTile(
              icon: Icons.person_outline,
              title: "My Profile",
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Myprofile()));
              },
            ),
            listTile(icon: Icons.notifications, title: "Notification"),
            listTile(
                icon: Icons.star_border_outlined, title: "Rating and Review"),
            listTile(icon: Icons.favorite_border_outlined, title: "Wishlist"),
            listTile(
                icon: Icons.document_scanner_outlined,
                title: "Raise a Complaint"),
            listTile(icon: Icons.format_quote_outlined, title: "FAQs"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Call us: '),
                      SizedBox(
                        width: 10,
                      ),
                      Text("+917990425274")
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('Mail us: '),
                      SizedBox(
                        width: 10,
                      ),
                      Text("hello@retry.com")
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
