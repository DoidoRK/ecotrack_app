import 'package:ecotrack_app/app/ui/widgets/custom_scaffold_widget.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomScaffoldWidget(
      title: "Sobre",
      goBackButton: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Este aplicativo foi desenvolvido para ajudar usuários a monitorar as áreas verdes de uma região."),
          Text("Desenvolvedores: Rodrigo Deves, João Henrique, João Carlos, Eduardo Padilha, Lorenzo Melo, Pedro Marcolino"),
          Text("Parceiro: UERGS"),
          Text("Contato: eco.track9@gmail.com"),
          SizedBox(height: 240,),
          Text("Versão 1.0.0")
        ],
      ),
    );
  }
}