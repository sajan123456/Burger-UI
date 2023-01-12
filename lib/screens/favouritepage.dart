import 'package:burger_ui/screens/homepage.dart';
import 'package:burger_ui/screens/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color.fromARGB(255, 160, 65, 41);
    return Scaffold(
      body: Center(
        child: Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.info_circle_fill,
              size: 50,
              color: Colors.grey,
            ),
            Text(
              'Sorry no favourites yet !',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(HomePage());
                },
                child: Text('Ok'))
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,

          // onTap: (value) {
          //   setState(() {
          //     _currentTab = value;
          //   });
          // },
          selectedFontSize: 13,
          showUnselectedLabels: true,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Get.to(HomePage());
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
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Get.to(ProfilePage());
                    },
                    child: Icon(Icons.person)),
                label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting')
          ]),
    );
  }
}
