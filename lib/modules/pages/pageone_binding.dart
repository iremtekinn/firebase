import 'package:blog/modules/pages/pageone_controller.dart';
import 'package:get/get.dart';

class PageOneBinding extends Bindings{
  @override 
  void dependencies(){
    Get.put(PageOneController());
  }
}