import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/cart/cart_screen.dart';
import 'package:task_techno/screen/home/widgets/error_result_widget.dart';

import '../../../core/utils/app_strings.dart';
import '../result_search_screen.dart';

class SearchSection extends StatelessWidget {
  SearchSection({Key? key}) : super(key: key);
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 32),
        Expanded(
          child: TextFormField(
            controller: searchController,
            onFieldSubmitted: (value){
              if(value.isEmpty||value==""){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorResultWidget(),));
              }else {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultSearchScreen(value: value),));
              }
            },
            decoration: InputDecoration(
              prefixIcon:  Icon(Icons.search,color:HexColor("#50555C"),),
              hintText: AppStrings.searchProduct,
              hintStyle:const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
              ) ,
              filled: true,
              fillColor: HexColor("#F3F3F3"),
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                      color:HexColor("#FFFFFF")
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:HexColor("#FFFFFF")
                  )
              ),
              border:  const OutlineInputBorder(),
              contentPadding: const EdgeInsets.only(top: 12,right:16 ,left:16 ,bottom:12 ),
            ),
          ),
        ),
        const SizedBox(width: 27,),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
          },
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topRight,
            children: [
              Icon(Icons.shopping_cart_outlined,size: 28 ,color: HexColor("#9098B1"),),
              Positioned(
                  bottom: 15,
                  left:15 ,
                  child:CircleAvatar(
                    radius: 12,
                    backgroundColor: HexColor("#FB7181"),
                    child: Center(child: Text("2",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: HexColor("#FFFFFF")
                      ),
                      textAlign: TextAlign.center,)),
                  ) )
            ],
          ),
        ),
        const SizedBox(width: 21,),

      ],
    );
  }
}