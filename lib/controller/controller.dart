import 'package:get/get.dart';

class HomeController extends GetxController {
// class HomeController extends ChangeNotifier {
  RxString custName = ''.obs;
  RxBool darkMode = false.obs;

  // String _custNam = '';
  // String get custNam => _custNam;

  updatevalue(String name) {
    custName.value = name;
    update();
  }

  updatevalue2() {
    print(darkMode.value);
    darkMode.value = !darkMode.value;
    update();
  }

  // updatevalue2(String name) {
  //   _custNam = name;
  //   notifylistner();
  // }
}
