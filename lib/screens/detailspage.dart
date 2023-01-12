import 'package:burger_ui/models/food_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  // const DetailPage({super.key});
  BurgerDetails burgerData;
  DetailPage({required this.burgerData});

  IconData icon1 = (Icons.arrow_back_ios_new);
  IconData icon2 = (Icons.favorite_outlined);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: Column(
            children: [
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: iconbutton(icon1, Colors.black)),
                      iconbutton(icon2, Colors.red),
                    ]),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                burgerData.foodName,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 400,
                child: Text(
                  burgerData.details,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 200,
                height: 200,
                child: Image(
                  image: AssetImage(burgerData.imageUrl),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconbutton1('S'),
                    iconbutton1('M'),
                    iconbutton1('L'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(Icons.add),
                    ),
                    Text(
                      '4',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(CupertinoIcons.minus),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style:
                              TextStyle(fontSize: 18, color: Colors.blueGrey),
                        ),
                        Text(
                          'Rs.140',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      height: 60,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.white,
                          ),
                          Center(
                              child: Text(
                            'Go to Cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Material iconbutton(IconData iconName, Color iconColor) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: 45,
        height: 45,
        child: Icon(
          iconName,
          color: iconColor,
        ),
      ),
    );
  }

  Material iconbutton1(String iconName) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: 45,
        height: 45,
        child: Center(
          child: Text(
            iconName,
            style: TextStyle(fontSize: 26),
            // textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
