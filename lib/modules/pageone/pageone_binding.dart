import 'package:blog/modules/pageone/pageone_controller.dart';
import 'package:get/get.dart';

class PageOneBinding extends Bindings{
  @override 
  void dependencies(){
    Get.put(PageOneController());
  }
}