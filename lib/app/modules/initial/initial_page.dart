import 'package:flutter_modular/flutter_modular.dart';
import 'package:unin/app/modules/initial/initial_store.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage({Key? key, this.title = 'InitialPage'}) : super(key: key);
  @override
  InitialPageState createState() => InitialPageState();
}
class InitialPageState extends State<InitialPage> {
  final InitialStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children:  <Widget>[
          const Center(child: Text("PAGINA INICIAL")),
          ElevatedButton(onPressed: (){
            Modular.to.pushNamed('/home');
          }, child: Text("HOME")),
          ElevatedButton(onPressed: (){
            Modular.to.pushNamed('/auth');
          }, child: Text("AUTH")),
        ],
      ),
    );
  }
}