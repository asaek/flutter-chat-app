import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto2_/screens/screens.dart';
import 'package:proyecto2_/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // const Spacer(flex: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Image.asset(
                    'assets/tag-logo.png',
                    width: 160,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 18, bottom: 70),
                  child: Text(
                    'Messenger',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                _Form(),
                // const Spacer(flex: 1),
                const Text(
                  'Notienes una cuenta?',
                  style: TextStyle(
                    color: Color(0xffA2A2A2),
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Crea una ahora!',
                      style: TextStyle(
                        color: Color(0xff3A8FE6),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onTap: () => Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => RegisterPage())),
                ),
                // const Spacer(flex: 10),
                const Text(
                  'Terminos y condiciones de uso',
                  style: TextStyle(
                    color: Color(0xff9E9E9E),
                    fontSize: 14,
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

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          ImputTextLogin(
            hintText: 'Email',
            icon: const Icon(
              Icons.mail_outline,
            ),
            controller: emailController,
          ),
          ImputTextLogin(
            hintText: 'Contrase;a',
            icon: const Icon(
              Icons.lock_outline,
            ),
            controller: passController,
          ),
          btnAzul(
            text: 'Inicar Sesión',
            onPressed: () {
              print(emailController.text);
              print(passController.text);
            },
          ),
        ],
      ),
    );
  }
}
