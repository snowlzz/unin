import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';


import 'package:flutter/material.dart';
import 'package:unin/app/modules/profile/profile_store.dart';

import '../components/cards.dart';

import 'editProfile_store.dart';

class EditProfilePage extends StatefulWidget {
  final String title;
  const EditProfilePage({Key? key, this.title = 'EditProfilePage'}) : super(key: key);
  @override
  EditPageState createState() => EditPageState();
}
class EditPageState extends State<EditProfilePage> {
  final EditProfileStore store = Modular.get();
  final ProfileStore storeP = Modular.get();


  @override
  void initState() {
    // store.recover();
    super.initState();
  }


  // TODO TRANSFROMAR EM DIAS
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Perfil'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (_, constraints){
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 5),
                          child: Center(
                            child: Observer(builder: (_) {
                              return CircleAvatar(
                                radius: 70,
                                backgroundColor: Colors.grey,
                                backgroundImage: NetworkImage(store.photoURL),
                              );},
                            ),
                          ),
                        ),
                        Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      child: const Text("Câmera",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        // store.selectPhoto("camera");
                      },
                    ),
                    TextButton(
                      child: const Text("Galeria",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        // store.selectPhoto("galeria");
                      },
                    ),

                  ],
                ),

                    KidCard(),

                    Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 5),
                          child: Center(
                            child: Observer(builder: (_) {
                              return CircleAvatar(
                                radius: 70,
                                backgroundColor: Colors.grey,
                                // backgroundImage: NetworkImage(store.momURL),
                              );},
                            ),
                          ),
                        ),
                        Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      child: const Text("Câmera",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        // store.selectMomPhoto("camera");
                      },
                    ),
                    TextButton(
                      child: const Text("Galeria",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        // store.selectMomPhoto("galeria");
                      },
                    ),

                  ],
                ),

                    // const MomCard(),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(child:Text( "Salvar"), onPressed: () {
                        // store.saveData();
                        store.calculoIdadeCrono();
                        // store.searchCep();
                        // store.calcIdadeCorrigida();
                        Modular.to.pushReplacementNamed("/home/");
                      },
                      // GradientButtonFb1(text: 'AGE', onPressed: (){store.ageCalculator(); })
                          
                          
                        ),
                    )],
                    ),
                  );
                }
              ),
            )
          ],
        ),
      )
    );
  }
}