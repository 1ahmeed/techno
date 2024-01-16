import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/home/widgets/error_result_widget.dart';
import 'package:task_techno/screen/home/widgets/result_search_item.dart';

import '../../core/utils/app_assets.dart';

class ResultSearchScreen  extends StatelessWidget {
  const ResultSearchScreen({Key? key, required this.value}) : super(key: key);
final String value;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 26,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Search Result ", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: HexColor("#50555C"),
                      fontSize: 16
                  ),),
                ],
              ),
              const SizedBox(height: 28,),
              const Divider(),
              const SizedBox(height: 19,),
              ResultSearchItem(),
            ],
          ),
        ),
      ),
    ));
  }
}
