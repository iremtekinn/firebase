import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../shared/services/firestore_service.dart';

class PageTwoController extends GetxController{
  
  TextEditingController topic = TextEditingController();
  TextEditingController content = TextEditingController();
  FirestoreService db = FirestoreService();
}