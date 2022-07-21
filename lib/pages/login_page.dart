import 'package:app_vendas/widgets/button_edit.dart';
import 'package:app_vendas/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

import 'menu/menu_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool savePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Color(0xffF0F0F0)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Vamos começar..",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Entre para começar a vender",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 15, right: 15),
                          child: Column(
                            children: [
                              TextFieldEdit(
                                label: "Email",
                                isPassword: false,
                                prefixIcon: const Icon(Icons.email,
                                    color: Colors.white),
                                typeKeyboard: TextInputType.emailAddress,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFieldEdit(
                                label: "Senha",
                                isPassword: true,
                                prefixIcon:
                                    const Icon(Icons.key, color: Colors.white),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text("Lembrar senha"),
                                  Switch(
                                    value: savePassword,
                                    onChanged: (value) {
                                      setState(() {
                                        if (savePassword) {
                                          savePassword = false;
                                        } else {
                                          savePassword = true;
                                        }
                                      });
                                    },
                                  ),
                                ],
                              ),
                              ButtonEdit(
                                tittle: "Entrar",
                                onPress: () {
                                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const MenuPage()));
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Text("V.1.0.0"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
