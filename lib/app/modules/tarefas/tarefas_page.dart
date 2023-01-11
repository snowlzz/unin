import 'package:flutter_modular/flutter_modular.dart';
import 'package:unin/app/modules/tarefas/tarefas_store.dart';
import 'package:flutter/material.dart';

class TarefasPage extends StatefulWidget {
  final String title;
  const TarefasPage({Key? key, this.title = 'TarefasPage'}) : super(key: key);
  @override
  TarefasPageState createState() => TarefasPageState();
}
class TarefasPageState extends State<TarefasPage> {
  final TarefasStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}