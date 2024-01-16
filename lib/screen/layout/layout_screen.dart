import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/favourite_list/favourite_list_screen.dart';
import 'package:task_techno/screen/home/home_screen.dart';

import '../account/account_screen.dart';
import '../cart/cart_screen.dart';
import '../offer/offer_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
   int  currentIndex=0;
   List<Widget> screens=[
     HomeScreen(),
     AccountScreen(),
     OfferScreen(),
      // CartScreen(),
     FavouriteListScreen(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:HexColor("#50555C") ,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(color: HexColor("#50555C"), fontSize: 10,fontWeight: FontWeight.w700) ,
          unselectedLabelStyle:TextStyle(color:HexColor("#9098B1"), fontSize: 10,fontWeight: FontWeight.w400),
          unselectedItemColor: HexColor("#9098B1"),
          currentIndex: currentIndex,
          onTap: (int index){
            setState(() {
              currentIndex=index;
            });

          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,),
                label: "Home",

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: "account"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer_outlined),
                label: "offer"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline,),
                label: "favourite"
            ),
          ],
        ),
        body:screens[currentIndex]
    );
  }
}
