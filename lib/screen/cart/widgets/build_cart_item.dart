import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/item_model.dart';
class BuildCartItem extends StatefulWidget {
     BuildCartItem({Key? key, required this.cart}) : super(key: key);
final ItemModel cart;
     late  int quantity=0;
  @override
  State<BuildCartItem> createState() => _BuildCartItemState();
}

class _BuildCartItemState extends State<BuildCartItem> {
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
      padding:  EdgeInsets.only(left: 10, top: 15,
         ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(widget.cart.image,width: 68 ,height: 72,),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 170,
                      child: Text(
                       widget.cart.title,
                        maxLines: 2,
                        style:  TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: HexColor("#223263"),
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                     SizedBox(
                      width: MediaQuery.of(context).size.width*.08,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.favorite,color: HexColor("#FB7181"),size: 28),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.delete_outline,color: HexColor("#9098B1"),size: 28,),
                    )
                  ],
                ),
                const SizedBox(height:14 ,),
                Row(
                  children: [
                    Text(
                      widget.cart.salary,
                      style:  TextStyle(
                          color:HexColor("#40BFFF"),
                          fontSize: 12,
                      fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.3,
                    ),

                    InkWell(
                      onTap:(){
                        setState(() {
                          if(widget.quantity==0||widget.quantity<0){

                          }else{
                            widget.quantity --;
                          }
                        });
                      },
                      child: Container(
                        height: 24,
                        width: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(
                            width: 1.5,
                            color:HexColor("#EBF0FF"),
                          ),

                        ),

                        child:  Center(
                          child:  Icon(Icons.remove,size:20
                              ,color: HexColor("#9098B1"),),
                        ),
                      ),
                    ),
                    Container(
                      color: HexColor("#EBF0FF"),
                        height: 24,
                        width: 30,
                        child: Center(child: Text("${widget.quantity}"))),
                    InkWell(
                      onTap:(){
                        setState(() {
                          widget.quantity ++;
                        });
                      },
                      child: Container(
                        height: 24,
                        width: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(
                            width: 1.5,
                            color:HexColor("#EBF0FF"),
                          ),

                        ),

                        child:  Center(
                          child:  Icon(Icons.add,size:20
                            ,color: HexColor("#9098B1"),),
                        ),
                      ),
                    ),
                  ],
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

