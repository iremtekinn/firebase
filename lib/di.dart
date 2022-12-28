import 'package:blog/shared/services/analytics_service.dart';
import 'package:blog/shared/services/auth_service.dart';
import 'package:blog/shared/services/firebase_service.dart';
import 'package:blog/shared/services/firestore_service.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DependencyInjection{
  
  static init() async{
  await Get.putAsync(()=>FirebaseService().init());
  await Get.putAsync(()=>AuthService().init());
  await Get.putAsync(() => FirestoreService().init());
  await Get.putAsync(() => AnalyticsService().init());
  }
}