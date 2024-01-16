import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/address/widgets/custom_text_form_field_for_add_address.dart';
import 'package:task_techno/screen/layout/layout_screen.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/widgets/custom_button.dart';

class AddAddressScreen extends StatelessWidget {
   AddAddressScreen({Key? key}) : super(key: key);
final countryController=TextEditingController();
final streetController=TextEditingController();
final street2Controller=TextEditingController();
final stateController=TextEditingController();
final cityController=TextEditingController();
final zipCodeController=TextEditingController();
final phoneController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Country or region",style: TextStyle(
                    fontWeight:FontWeight.w700 ,
                    fontSize: 14,
                    color: HexColor("#223263")
                  ),),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextFormFieldForAddAddress(
                      controller: cityController,
                      keyboard: TextInputType.text,
                      validate: (value){
                        if(value!.isEmpty){
                          return"Please Enter Your Country Region";
                        }else{
                          return null;
                        }
                      },
                      label: "",
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  Text("Street Address",style: TextStyle(
                      fontWeight:FontWeight.w700 ,
                      fontSize: 14,
                      color: HexColor("#223263")
                  ),),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextFormFieldForAddAddress(
                    controller: streetController,
                    keyboard: TextInputType.text,
                    validate: (value){
                      if(value!.isEmpty){
                        return"Please Enter Your street";
                      }else{
                        return null;
                      }
                    },
                    label: "",
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  Text("Street Address 2 (Optional)",style: TextStyle(
                      fontWeight:FontWeight.w700 ,
                      fontSize: 14,
                      color: HexColor("#223263")
                  ),),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextFormFieldForAddAddress(
                    controller: street2Controller,
                    keyboard: TextInputType.text,
                    validate: (value){
                      if(value!.isEmpty){
                        return null;
                      }else{
                        return null;
                      }
                    },
                    label: "",
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  Text("State/Province/Region",style: TextStyle(
                      fontWeight:FontWeight.w700 ,
                      fontSize: 14,
                      color: HexColor("#223263")
                  ),),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextFormFieldForAddAddress(
                    controller: stateController,
                    keyboard: TextInputType.text,
                    validate: (value){
                      if(value!.isEmpty){
                        return "PLease Enter Your state";
                      }else{
                        return null;
                      }
                    },
                    label: "",
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  Text("City",style: TextStyle(
                      fontWeight:FontWeight.w700 ,
                      fontSize: 14,
                      color: HexColor("#223263")
                  ),),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextFormFieldForAddAddress(
                    controller: cityController,
                    keyboard: TextInputType.text,
                    validate: (value){
                      if(value!.isEmpty){
                        return "PLease Enter Your city";
                      }else{
                        return null;
                      }
                    },
                    label: "",
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  Text("Zip Code",style: TextStyle(
                      fontWeight:FontWeight.w700 ,
                      fontSize: 14,
                      color: HexColor("#223263")
                  ),),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextFormFieldForAddAddress(
                    controller: zipCodeController,
                    keyboard: TextInputType.number,
                    validate: (value){
                      if(value!.isEmpty){
                        return "PLease Enter Your zip code";
                      }else{
                        return null;
                      }
                    },
                    label: "",
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  Text("Phone Number",style: TextStyle(
                      fontWeight:FontWeight.w700 ,
                      fontSize: 14,
                      color: HexColor("#223263")
                  ),),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextFormFieldForAddAddress(
                    controller: phoneController,
                    keyboard: TextInputType.number,
                    validate: (value){
                      if(value!.isEmpty){
                        return "PLease Enter Your Phone";
                      }else{
                        return null;
                      }
                    },
                    label: "",
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  CustomButton(function: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutScreen(),));
                  },
                    text: "Add Address",background: HexColor("#BA6400"),),


                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
