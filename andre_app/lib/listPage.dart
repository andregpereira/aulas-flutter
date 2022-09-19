import 'package:andre_app/components/andreCard.dart';
import 'package:andre_app/components/andreForm.dart';
import 'package:andre_app/models/itemModel.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  TextEditingController textEditingControllerNome = TextEditingController();
  TextEditingController textEditingControllerLocalizacao =
      TextEditingController();

  addItem({required itemNome, required itemLocalizacao}) {
    setState(
      () {
        itemList.insert(
          0,
          ItemModel(
            nome: itemNome,
            localizacao: itemLocalizacao,
          ),
        );
      },
    );
  }

  List<ItemModel> itemList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addItem(
            itemNome: textEditingControllerNome.text,
            itemLocalizacao: textEditingControllerLocalizacao.text,
          );
          textEditingControllerNome.text = "";
          textEditingControllerLocalizacao.text = "";
        },
        child: const Icon(Icons.add_rounded),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              const Text('Lista de itens do No Man' "'" 's Sky'),
              const SizedBox(
                height: 20,
              ),
              AndreForm(
                label: 'Nome do item/objeto/artefato',
                userInputController: textEditingControllerNome,
              ),
              const SizedBox(
                height: 10.0,
              ),
              AndreForm(
                label: 'Localização (sistema, planeta/lua e coordenadas)',
                userInputController: textEditingControllerLocalizacao,
              ),
              const SizedBox(
                height: 20.0,
              ),
              itemList.isEmpty
                  ? const Text('Lista vazia!')
                  : SizedBox(
                      height: 420,
                      width: 500,
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemCount: itemList.length,
                        itemBuilder: (BuildContext context, int index) {
                          var item = itemList[index];
                          return AndreCard(
                            itemNome: item.nome,
                            itemLocalizacao: item.localizacao,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                          height: 10,
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
