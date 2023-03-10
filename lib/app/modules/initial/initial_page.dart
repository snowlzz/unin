import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unin/app/modules/components/input_comp.dart';
import 'package:unin/app/modules/initial/initial_store.dart';
import 'package:flutter/material.dart';
import 'package:unin/app/modules/models/user_model.dart';

class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage({Key? key, this.title = 'InitialPage'}) : super(key: key);
  @override
  InitialPageState createState() => InitialPageState();
}

class InitialPageState extends State<InitialPage> {
  final InitialStore store = Modular.get();
  final UserModel user = UserModel();
  TextEditingController? inputController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 193, 143),
        leading: null,
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 193, 143),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: LayoutBuilder(builder: (_, constraints) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset("images/LogoMov.gif"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: EmailInputField(
                            inputController: store.controllerEmail),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PasswordInput(
                          inputController: store.controllerPass,
                        ),
                      ),
                      SizedBox(height: 10),
                      Observer(builder: (_) {
                        return Text(
                          store.erro,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        );
                      }),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          store.signIn(UserModel());
                        },
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(Size.fromWidth(200)),
                        ),
                        child: const Text("Entrar"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Modular.to.pushReplacementNamed('/auth');
                        },
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(Size.fromWidth(200))),
                        child: const Text(
                          "Primeira vez no universo prematuro?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
