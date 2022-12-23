import 'package:blog/modules/login/login_binding.dart';
import 'package:blog/modules/pageone/pageone_screen.dart';
import 'package:blog/modules/pagetwo/pagetwo_screen.dart';
import 'package:blog/modules/register/register_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../modules/login/login_scren.dart';
import '../modules/pageone/pageone_binding.dart';
import '../modules/pagetwo/pagetwo_binding.dart';
import '../modules/register/register_screen.dart';
part 'app_routes.dart';
class AppPages{
  static const INITAL =Routes.LOGIN;

  static final routes =[
    GetPage(
     name: Routes.REGISTER,
     page: () => Register(),
      binding: RegisterBinding(),
    ),

    GetPage(
      name: Routes.LOGIN, 
    page: ()=>Login(),
     binding: LoginBinding(),
   
    ),
   

   GetPage(
      name: Routes.PAGEONE, 
    page: ()=>PageOne(),
     binding: PageOneBinding(),
   
    ),

    GetPage(
      name: Routes.PAGETWO, 
    page: ()=>PageTwo(),
     binding: PageTwoBinding(),
   
    ),
    
  ];
}