import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:burger_ui/models/food_items.dart';
import 'package:burger_ui/provider/data_provider.dart';
import 'package:burger_ui/screens/detailspage.dart';
import 'package:burger_ui/screens/favouritepage.dart';
import 'package:burger_ui/screens/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
  Color primaryColor = Color.fromARGB(255, 160, 65, 41);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.list_rounded,
          size: 25,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Chicago IIL',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Icon(
            CupertinoIcons.cart_fill_badge_plus,
            size: 35,
            color: Color.fromARGB(255, 174, 48, 39),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: ListView(
          children: [
            //search
            Card(
              elevation: 2,
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minLeadingWidth: 1,
                leading: Icon(Icons.search),
                title: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search our Delicious Burger',
                  ),
                ),
              ),
            ),
            //food categories
            CardItems(),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all >',
                        style: TextStyle(color: primaryColor),
                      ),
                    )
                  ]),
            ),
            Consumer(
              builder: (context, ref, child) {
                final itemData = ref.watch(itemProvider);
                return Container(
                  height: 350,
                  child: ListView.builder(
                    itemCount: itemData.itemDetails1.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(DetailPage(
                            burgerData: burgerDetails[index],
                          ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 231, 231, 231),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(bottom: 20),
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 130,
                                    width: double.infinity,
                                    child: Image(
                                      image: AssetImage(itemData
                                          .itemDetails1[index].imageUrl),
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    itemData.itemDetails1[index].foodName,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    itemData.itemDetails1[index].foodPrice,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Text(itemData.itemDetails1[index].foodCategory)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,

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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: InkWell(child: Icon(Icons.favorite)), label: 'Favourite'),
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

class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final itemData1 = ref.watch(itemProvider);
        return Container(
          margin: EdgeInsets.only(top: 20),
          height: 190,
          child: ListView.builder(
              itemCount: foodItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {
                    ref.read(itemProvider.notifier).updateItem(index);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(right: 8),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 226, 226, 226),
                            borderRadius: BorderRadius.circular(20)),
                        width: 100,
                        padding: EdgeInsets.all(12),
                        // margin: EdgeInsets.only(bottom: ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                    image:
                                        AssetImage(foodItems[index].imageUrl),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              foodItems[index].itemName,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              })),
        );
      },
    );
  }
}
