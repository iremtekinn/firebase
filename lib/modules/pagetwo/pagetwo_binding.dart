import 'package:blog/modules/pagetwo/pagetwo_controller.dart';
import 'package:get/get.dart';

class PageTwoBinding extends Bindings{
  @override 
  void dependencies(){
    Get.put(PageTwoController());
  }
}