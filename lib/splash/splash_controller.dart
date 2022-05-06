import 'package:demofinsire/grid/grid_view.dart';
import 'package:get/get.dart';

class Splashcontroller extends GetxController {

  @override
  void onInit() async{
    super.onInit();
   await Future.delayed(Duration(seconds: 3));
   Get.offAll(()=>GridPage());

  }

}
