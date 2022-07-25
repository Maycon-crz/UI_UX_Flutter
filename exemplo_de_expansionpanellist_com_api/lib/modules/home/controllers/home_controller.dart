import 'package:exemplo_de_expansionpanellist_com_api/data/employee.dart';
import 'package:exemplo_de_expansionpanellist_com_api/repository/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  final HomeRepository repo;
  HomeController(this.repo);

  List<Employee> employee = <Employee>[].obs;
  @override
  void onInit() {
    super.onInit();
    // employee = generateItems(20);
    findData();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {}
  // List<Employee> generateItems(int numberOfItems) {
  //   return List.generate(numberOfItems, (int index) {
  //     return Employee(
  //         titulo: 'Employee - $index',
  //         paragrafos: 'Employee - $index Details',
  //         isExpanded: false.obs);
  //   });
  // }

  Future findData() async {
    await repo.find().then((response) {
      employee.addAll(response);
    });
  }
}
