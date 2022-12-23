import 'package:blog/modules/register/register_binding.dart';
import 'package:blog/modules/register/register_screen.dart';
import 'package:blog/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class Login extends GetView<LoginController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 50,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Row(
                  children: [
                    Image.asset("assets/user.png",width:80 ,height: 100,),
                    SizedBox(width:40),
                    Text("Login",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                  ],
                ),
              ),
             width: double.infinity,
             height: 200,
             
             decoration: BoxDecoration(
              color: Colors.orange.shade800,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40)
                ),
             ),
            ),
            SizedBox(height: 150,),
            Padding(
              padding: const EdgeInsets.only(right:15,left:15),
              child: TextFormField(
              controller: controller.email,
                //keyboardType:TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "email",
                  //suffixText:"email" ,
                  prefixIcon: Icon(Icons.email)
                ),
              ),
            ),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(right:15,left:15),
              child: TextFormField(
                controller: controller.password,
                //keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "password",
                  prefixIcon: Icon(Icons.remove_red_eye)
                ),
              ),
            ),
            SizedBox(height: 200,),
            GestureDetector(
              onTap:() {
                controller.auth.acount(controller.email.text,controller.password.text);
              },
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.blue.shade400,
                  color: Color(0xffEE7B23),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 50,
                width: 380,
                
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () {
                //Get.to(Register(),binding: RegisterBinding());
            //  Get.toNamed(Routes.REGISTER);
            Get.toNamed(Routes.REGISTER);
              },
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.blue.shade400,
                  color: Color(0xffEE7B23),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 50,
                width: 380,
                child: Center(child: Text("sayfa geçişi/register",style: TextStyle(color: Colors.white,fontSize: 20),))))
          ],
        ),
      )
    );
  }
}