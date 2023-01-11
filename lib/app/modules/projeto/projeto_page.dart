import 'package:flutter/material.dart';

class ProjetoPage extends StatefulWidget {
  final String title;
  const ProjetoPage({Key? key, this.title = 'ProjetoPage'}) : super(key: key);
  @override
  ProjetoPageState createState() => ProjetoPageState();
}
class ProjetoPageState extends State<ProjetoPage> {

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