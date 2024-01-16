import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/item_model.dart';

class SaleItem extends StatelessWidget {
  const SaleItem({Key? key, required this.itemModel}) : super(key: key);
final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(itemModel.image, width: 141,height: 143,),
              Positioned(
                left: 0,
                child: InkWell(
                  child:
                  const Icon(
                      Icons.favorite_outline,
                      size: 25,
                      color: Colors.white
                  ),

                  onTap: () {
                  },
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 130,
            child: Text(
              itemModel.title,
              maxLines: 2,
              style:  TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    itemModel.salary,
                    style:  TextStyle(
                        color: HexColor("#50555C"),
                        fontSize: 13),
                  )),
              const SizedBox(
                width: 5,
              ),
              Row(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      itemModel.discount,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12.5,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      itemModel.percent,
                      style:  TextStyle(
                          color: HexColor("#FB7181"),
                          fontSize: 10,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 5,)
        ],
      ),
    );
  }
}
