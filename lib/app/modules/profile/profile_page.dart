import 'package:flutter_modular/flutter_modular.dart';
import 'package:unin/app/modules/profile/profile_store.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key? key, this.title = 'ProfilePage'}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final ProfileStore store = Modular.get();

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
          ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/edit');
              },
              child: Text("EDITAR PERFIL"))
        ],
      ),
    );
  }
}
