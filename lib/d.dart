import 'package:blog/shared/services/firebase_service.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DependencyInjection{
  
  static init() async{
  await Get.putAsync(()=>FirebaseService().init());
  }
}