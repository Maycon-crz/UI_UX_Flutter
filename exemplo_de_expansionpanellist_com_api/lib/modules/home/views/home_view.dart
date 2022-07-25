import 'package:exemplo_de_expansionpanellist_com_api/data/employee.dart';
import 'package:exemplo_de_expansionpanellist_com_api/modules/components/fonts_toggle.dart';
import 'package:exemplo_de_expansionpanellist_com_api/modules/components/imagens_component.dart';
import 'package:exemplo_de_expansionpanellist_com_api/modules/components/list_view_title.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Panel List'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          child: Obx(() => ExpansionPanelList(
              expandedHeaderPadding: const EdgeInsets.all(10),
              dividerColor: const Color.fromARGB(255, 81, 240, 41),
              elevation: 3.0,
              expansionCallback: (panelIndex, isExpanded) {
                controller.employee[panelIndex].isExpanded!.value = !isExpanded;
              },
              children:
                  controller.employee.map<ExpansionPanel>((Employee item) {
                return ExpansionPanel(
                  backgroundColor: Colors.grey[850]!,
                  canTapOnHeader: true,
                  headerBuilder: ((context, isExpanded) {
                    return ListTile(
                      horizontalTitleGap: 8.0,
                      title: Column(
                        children: [
                          // Text(item.titulo!),
                          listViewTitle(context: context, titulo: item.titulo),
                          imagensComponent(
                            item.imgum,
                            item.imgdois,
                            item.imgtres,
                            item.imgquatro,
                            item.imgcinco,
                          ),
                        ],
                      ),
                    );
                  }),
                  body: ListTile(
                    title: ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 300),
                      child: SingleChildScrollView(
                        child: Text(item.paragrafos!),
                      ),
                    ),
                    subtitle: Column(
                      children: [
                        fontsToggle(
                          fonteum: item.fonteum!,
                          fontedois: item.fontedois!,
                          fontetres: item.fontetres!,
                          fontequatro: item.fontequatro!,
                          fontecinco: item.fontecinco!,
                        ),
                      ],
                    ),
                  ),
                  isExpanded: item.isExpanded!.value,
                );
              }).toList())),
        ),
      ),
    );
  }
}
