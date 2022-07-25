import 'package:exemplo_de_expansionpanellist_com_api/data/employee.dart';
import 'package:exemplo_de_expansionpanellist_com_api/data/rest_client.dart';

class HomeRepository {
  final RestClient rest;
  HomeRepository(this.rest);
  find() async {
    print("Chamou");
    String url = 'https://www.recicladarte.com/api/posts/-/QOnqcZN269@';
    return await rest.get((url)).then((resp) {
      print(resp.body);
      if (resp.isOk) {
        return resp.body
            .map<Employee>((resp) => Employee.fromMap(resp))
            .toList();
      }
    });
  }
}
