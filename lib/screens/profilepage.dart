import 'package:burger_ui/screens/favouritepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Color primaryColor = Color.fromARGB(255, 160, 65, 41);
  double sizedBoxHeight = 10;
  double iconSize = 25;
  int _currentTab = 2;
  Color textColor = Colors.grey;
  // MediaQuery height = MediaQuery.of(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.list_rounded,
          size: iconSize,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Title',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Icon(
            CupertinoIcons.cart_fill_badge_plus,
            size: 40,
            color: Color.fromARGB(255, 174, 48, 39),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        // padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 120,
                    color: Color.fromARGB(255, 175, 49, 40),
                  ),
                  Text(
                    'Sajan Manandhar',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '98-xxxxxx | ',
                        style: TextStyle(fontSize: 16, color: textColor),
                      ),
                      Text(
                        'test@gmail.com',
                        style: TextStyle(fontSize: 16, color: textColor),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ACCOUNT',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w500),
                        ),
                        Column(children: [
                          ListTile(
                            // minVerticalPadding: 1,
                            minLeadingWidth: 1,
                            leading: Icon(
                              Icons.person,
                              size: iconSize,
                            ),
                            title: Text(
                              'Profile',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          ListTile(
                            minLeadingWidth: 1,
                            leading: Icon(
                              Icons.star,
                              size: iconSize,
                            ),
                            title: Text(
                              'Saved Address',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          ListTile(
                            minLeadingWidth: 1,
                            leading: Icon(
                              Icons.notifications,
                              size: iconSize,
                            ),
                            title: Text(
                              'Notification',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: sizedBoxHeight,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'OFFERS',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w500),
                        ),
                        Column(children: [
                          ListTile(
                            // minVerticalPadding: 1,
                            minLeadingWidth: 1,
                            leading: Icon(
                              Icons.person,
                              size: iconSize,
                            ),
                            title: Text(
                              'Promos',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          ListTile(
                            minLeadingWidth: 1,
                            leading: Icon(
                              Icons.star,
                              size: iconSize,
                            ),
                            title: Text(
                              'Get Discounts',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: sizedBoxHeight,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SETTINGS',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w500),
                        ),
                        Column(children: [
                          ListTile(
                            // minVerticalPadding: 1,
                            minLeadingWidth: 1,
                            leading: Icon(
                              Icons.person,
                              size: iconSize,
                            ),
                            title: Text(
                              'Themes',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: textColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                      ],
                    )),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          showUnselectedLabels: true,
          // onTap: (value) {
          //   setState(() {
          //     _currentTab = value;
          //   });
          // },
          selectedFontSize: 13,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.home)),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Get.to(FavouritePage());
                    },
                    child: Icon(Icons.favorite)),
                label: 'Favourite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting')
          ]),
    );
  }
}
