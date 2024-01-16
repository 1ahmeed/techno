import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/widgets/custom_button.dart';
import 'package:task_techno/core/widgets/custom_text_form_field.dart';
import 'package:task_techno/screen/account/widgets/custom_text_form_field_for_profile.dart';

import '../../core/utils/app_assets.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);


   String? lang;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final firstNameController=TextEditingController();

  final secondNameController=TextEditingController();

  final emailController=TextEditingController();

  final phoneController=TextEditingController();

  final oldPasswordController=TextEditingController();

  final newPasswordController=TextEditingController();

  final confirmController=TextEditingController();

  List<String>? items = ["ar","en"];

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
                Text(
                  "Profile",
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
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 40, child: Image.asset(AppAssets.person1)),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap:(){
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                      height: 360,
                                      color: Colors.white,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(top: 29.0, left: 16,right: 16),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "First Name",
                                              style: TextStyle(
                                                  color: HexColor("#223263"),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            const SizedBox(height: 12,),
                                            CustomTextFormFieldForProfile(
                                                controller: firstNameController,
                                                keyboard: TextInputType.text,
                                                validate: (value){
                                                  if(value!.isEmpty){
                                                    return "please enter correct name" ;
                                                  }else{
                                                    return null;
                                                  }
                                                },
                                                label: "Dominic"),
                                            const SizedBox(height: 24,),
                                            Text(
                                              "Last Name",
                                              style: TextStyle(
                                                  color: HexColor("#223263"),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            const SizedBox(height: 12,),
                                            CustomTextFormFieldForProfile(
                                                controller: firstNameController,
                                                keyboard: TextInputType.text,
                                                validate: (value){
                                                  if(value!.isEmpty){
                                                    return "please enter correct name" ;
                                                  }else{
                                                    return null;
                                                  }
                                                },
                                                label: "lawson"),
                                            const SizedBox(height: 39,),
                                            CustomButton(function: (){}, text: "Save",background: HexColor("#BA6400"),)
                                          ],
                                        ),
                                      ));
                                },
                              );
                            },
                            child: Text(
                              "James Lawson",
                              style: TextStyle(
                                  color: HexColor("#223263"),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "@dominic_ovo",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: HexColor(("#9098B1"))),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  ListTile(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              height: 300,
                              color: Colors.white,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 29.0, left: 16,right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                          color: HexColor("#223263"),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 12,),
                                    CustomTextFormField(
                                        controller: emailController,
                                        keyboard: TextInputType.text,
                                        validate: (value){
                                          if(value!.isEmpty){
                                            return "please enter correct name" ;
                                          }else{
                                            return null;
                                          }
                                        },
                                        hintText:"rex4dom@gmail.com" ,
                                        prefixIcon: Icons.email_outlined,
                                        colorIcon: HexColor("#BA6400"),
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                            color: HexColor("#9098B1")
                                        ),
                                        labelStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: HexColor("#9098B1")
                                        ),
                                        label: "rex4dom@gmail.com"),
                                    const SizedBox(height: 24,),
                                    Text(
                                      "We Will Send verification to your New Email",
                                      style: TextStyle(
                                          color: HexColor("#223263"),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(height: 39,),
                                    CustomButton(function: (){}, text: "Save",background: HexColor("#BA6400"),)
                                  ],
                                ),
                              ));
                        },
                      );
                    },
                    leading: Icon(
                      Icons.email_outlined,
                      color: HexColor("#BA6400"),
                      size: 30,
                    ),
                    title: Row(
                      children: [
                        Text(
                          "email",
                          style: TextStyle(
                            fontSize: 12,
                            color: HexColor("#223263"),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "rex4dom@gmail.com",
                          style: TextStyle(
                            fontSize: 12,
                            color: HexColor("#9098B1"),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(AppAssets.arrowRight)
                      ],
                    ),
                  ),
                  ///phone
                  ListTile(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              height: 300,
                              color: Colors.white,
                              child: Padding(
                                padding:
                                const EdgeInsets.only(top: 29.0, left: 16,right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Phone",
                                      style: TextStyle(
                                          color: HexColor("#223263"),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 12,),
                                    CustomTextFormField(
                                        controller: phoneController,
                                        keyboard: TextInputType.text,
                                        validate: (value){
                                          if(value!.isEmpty){
                                            return "please enter correct name" ;
                                          }else{
                                            return null;
                                          }
                                        },
                                        hintText:"(307) 555-0133" ,
                                        prefixIcon: Icons.phone_android_outlined,
                                        colorIcon: HexColor("#BA6400"),
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: HexColor("#9098B1")
                                        ),
                                        label: "(307) 555-0133"),

                                    const SizedBox(height: 84,),
                                    CustomButton(function: (){}, text: "Save",background: HexColor("#BA6400"),)
                                  ],
                                ),
                              ));
                        },
                      );
                    },
                    leading: Icon(
                      Icons.phone_android_outlined,
                      color: HexColor("#BA6400"),
                      size: 30,
                    ),
                    title: Row(
                      children: [
                        Text(
                          "Phone number",
                          style: TextStyle(
                            fontSize: 12,
                            color: HexColor("#223263"),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "(307) 555-0133",
                          style: TextStyle(
                            fontSize: 12,
                            color: HexColor("#9098B1"),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(AppAssets.arrowRight)
                      ],
                    ),
                  ),
                  ///change password
                  ListTile(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              height: 500,
                              color: Colors.white,
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 29.0, left: 16,right: 16,bottom: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "old Password",
                                        style: TextStyle(
                                            color: HexColor("#223263"),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(height: 12,),
                                      CustomTextFormField(
                                          controller: oldPasswordController,
                                          keyboard: TextInputType.text,
                                          prefixIcon:Icons.lock_outline ,
                                          hintStyle: TextStyle(
                                            color:HexColor("#9098B1") ,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700
                                          ),
                                          // colorIcon: ,
                                          hintText:"•••••••••••••••••" ,
                                          validate: (value){
                                            if(value!.isEmpty){
                                              return "please enter correct password" ;
                                            }else{
                                              return null;
                                            }
                                          },
                                          label: "•••••••••••••••••"),
                                      const SizedBox(height: 24,),
                                      Text(
                                        "New Password",
                                        style: TextStyle(
                                            color: HexColor("#223263"),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(height: 12,),
                                      CustomTextFormField(
                                          controller: newPasswordController,
                                          keyboard: TextInputType.text,
                                          prefixIcon:Icons.lock_outline ,
                                          hintStyle: TextStyle(
                                              color:HexColor("#9098B1") ,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700
                                          ),
                                          hintText:"•••••••••••••••••" ,
                                          validate: (value){
                                            if(value!.isEmpty){
                                              return "please enter correct password" ;
                                            }else{
                                              return null;
                                            }
                                          },
                                          label: "•••••••••••••••••"),
                                      const SizedBox(height: 24,),
                                      Text(
                                        "New Password Again",
                                        style: TextStyle(
                                            color: HexColor("#223263"),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(height: 12,),
                                      CustomTextFormField(
                                          controller: confirmController,
                                          keyboard: TextInputType.text,
                                          prefixIcon:Icons.lock_outline ,
                                          hintStyle: TextStyle(
                                              color:HexColor("#9098B1") ,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700
                                          ),
                                          hintText:"•••••••••••••••••" ,
                                          validate: (value){
                                            if(value!.isEmpty){
                                              return "please enter correct password" ;
                                            }else{
                                              return null;
                                            }
                                          },
                                          label: "•••••••••••••••••"),

                                      const SizedBox(height: 39,),
                                      CustomButton(function: (){}, text: "Save",background: HexColor("#BA6400"),)
                                    ],
                                  ),
                                ),
                              ));
                        },
                      );
                    },
                    leading: Icon(
                      Icons.lock_outline,
                      color: HexColor("#BA6400"),
                      size: 30,
                    ),
                    title: Row(
                      children: [
                        Text(
                          "Change Password",
                          style: TextStyle(
                            fontSize: 12,
                            color: HexColor("#223263"),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "•••••••••••••••••",
                          style: TextStyle(
                            fontSize: 12,
                            color: HexColor("#9098B1"),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(AppAssets.arrowRight)
                      ],
                    ),
                  ),
                  ///change language
                  ListTile(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              height: 250,
                              color: Colors.white,
                              child: Padding(
                                padding:
                                const EdgeInsets.only(top: 29.0, left: 16,right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Choose Language",
                                      style: TextStyle(
                                          color: HexColor("#223263"),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 12,),
                                    DropdownButton<String>(
                                        isExpanded: true,
                                        hint: Text("choose Language",style: TextStyle(
                                            fontWeight:FontWeight.w500 ,
                                            fontSize: 17,
                                            color: HexColor("#9098B1")
                                        )),

                                        value: widget.lang,
                                        items: items!.map(buildMenuItemsForLanguage)
                                            .toList(),
                                        onChanged: (value) =>
                                            setState(() {
                                              widget.lang = value;})

                                    ),
                                    const SizedBox(height: 39,),
                                    CustomButton(function: (){}, text: "Save",background: HexColor("#BA6400"),)
                                  ],
                                ),
                              ));
                        },
                      );
                    },
                    leading: Icon(
                      Icons.language,
                      color: HexColor("#BA6400"),
                      size: 30,
                    ),
                    title: Row(
                      children: [
                        Text(
                          "Change  Lang",
                          style: TextStyle(
                            fontSize: 12,
                            color: HexColor("#223263"),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  DropdownMenuItem<String> buildMenuItemsForLanguage(String item) =>
      DropdownMenuItem(
          value: item,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              item,
              style:  TextStyle(
                fontSize: 17,
                  fontWeight: FontWeight.w500,
              color: HexColor("#9098B1")),
            ),
          ));
}
