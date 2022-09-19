import 'package:flutter/material.dart';

class AndreCard extends StatelessWidget {
  final String? itemNome;
  final String? itemLocalizacao;

  const AndreCard(
      {Key? key, required this.itemNome, required this.itemLocalizacao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.green,
        border: Border.all(color: Colors.lime, width: 2),
      ),
      width: 50,
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 20),
      child: Column(
        children: [
          Wrap(
            direction: Axis.horizontal,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Nome: '),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  itemNome!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),

          // tentei usar o Row(), mas extrapola a largura do card...
          Wrap(
            direction: Axis.horizontal,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Localização: '),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  itemLocalizacao!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
