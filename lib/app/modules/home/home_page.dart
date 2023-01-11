import 'package:flutter_modular/flutter_modular.dart';
import 'package:unin/app/modules/home/home_store.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(onPressed: () {
          Modular.to.pop();
        }, icon: Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Column(
        children: <Widget>[
          const Center(
            child: Text('HOMEPAGE'),
          ),
          ElevatedButton(onPressed: (){
            Modular.to.pushNamed('/profile');
          }, child: Text("PERFIL"))
        ],
      ),
    );
  }
}