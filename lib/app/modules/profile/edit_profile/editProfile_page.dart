import 'package:flutter_modular/flutter_modular.dart';
import 'package:unin/app/modules/profile/edit_profile/editProfile_store.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  final String title;
  const EditProfilePage({Key? key, this.title = 'EditProfilePage'}) : super(key: key);
  @override
  EditProfilePageState createState() => EditProfilePageState();
}
class EditProfilePageState extends State<EditProfilePage> {
  final EditProfileStore store = Modular.get();

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