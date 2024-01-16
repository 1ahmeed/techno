import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/address/widgets/add_address_screen.dart';
import 'package:task_techno/screen/address/widgets/build_address_item.dart';

import '../../core/utils/app_assets.dart';
import '../../core/widgets/custom_button.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:Column(
        children: [
          const SizedBox(
            height: 26,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              SvgPicture.asset(AppAssets.arrowLeft),
              const SizedBox(
                width: 20,
              ),
              Text(
                "Address",
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
          const SizedBox(
            height: 19,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                        itemBuilder: (context, index) =>  BuildAddressItem(),
                        separatorBuilder: (context, index) => SizedBox(height: 10,),
                        itemCount: 2),
                  ),
                  CustomButton(function: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => AddAddressScreen(),));
                  },
                    text: "Add Address",background: HexColor("#BA6400"),),
                ],
              ),
            ),
          )
        ],
      )

      ,));
  }
}
