import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/item_model.dart';

class BuildProductOrderWidget extends StatelessWidget {
  const BuildProductOrderWidget({Key? key, required this.cart}) : super(key: key);
  final ItemModel cart;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: 2,
              color: HexColor("#EBF0FF")
          )
      ),
      padding: const EdgeInsets.only(left: 16, top: 15,right: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(cart.image,width: 68 ,height: 72,),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 170,
                  child: Text(
                    cart.title,
                    maxLines: 2,
                    style:  TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: HexColor("#223263"),
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                const SizedBox(height:14 ,),
                Text(
                  cart.salary,
                  style:  TextStyle(
                      color:Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
