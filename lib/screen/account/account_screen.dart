import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/utils/app_assets.dart';
import 'package:task_techno/screen/account/profile_screen.dart';
import 'package:task_techno/screen/account/widgets/alert_delet_screen.dart';
import 'package:task_techno/screen/address/address_screen.dart';

import '../orders/orders_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 26,),
              Text(
                "Account ",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: HexColor("#223263"),
                    fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 28,
          ),
          const Divider(),

          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [

                ///profile screen
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => ProfileScreen(),) );
                  },
                  leading:  Icon(
                    Icons.person_2_outlined,color: HexColor("#BA6400"),size: 30,
                  ),
                  title:  Text(
                    "Profile",
                    style:   TextStyle(
                      fontSize: 12,
                      color: HexColor("#223263"),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                ///Order
                ListTile(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder:
                        (context) => OrdersScreen(),) );
                  },
                  leading: SvgPicture.asset(AppAssets.iconShopping,width:24 ,height: 24,),
                  title:  Text(
                    "My Orders",
                    style:   TextStyle(
                      fontSize: 12,
                      color: HexColor("#223263"),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                ///address
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddressScreen(),));
                  },
                  leading:  Icon(
                    Icons.location_on_outlined,color: HexColor("#BA6400"),size: 30,
                  ),
                  title:  Text(
                    "address",
                    style:   TextStyle(
                      fontSize: 12,
                      color: HexColor("#223263"),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                ///تسجيل خروج من الايميل
                ListTile(
                  onTap: () {
                  },
                  leading:  Icon(
                    Icons.logout,color: HexColor("#BA6400"),size: 30,
                  ),
                  title:  Text(
                    "Log out",
                    style:   TextStyle(
                      fontSize: 12,
                      color: HexColor("#223263"),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),



                ///delete account
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AlertDeleteScreen(),));

                  },
                  leading:  Icon(
                    Icons.delete_outline,color: Colors.redAccent.shade700,size: 30,
                  ),
                    title:  Text(
                      "Delete Account",
                      style:   TextStyle(
                        fontSize: 12,
                        color: HexColor("#223263"),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                ),




                const SizedBox(height: 16),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
