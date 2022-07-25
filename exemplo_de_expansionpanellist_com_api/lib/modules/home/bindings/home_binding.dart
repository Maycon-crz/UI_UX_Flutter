import 'package:exemplo_de_expansionpanellist_com_api/data/rest_client.dart';
import 'package:exemplo_de_expansionpanellist_com_api/repository/home_repository.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient());
    Get.lazyPut(() => HomeRepository(Get.find()));
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
