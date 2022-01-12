import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto2_/widgets/widgets.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: EdgeInsets.only(top: 18),
                  child: Text(
                    'Registro',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                _Form(),
                // const Spacer(flex: 1),

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
  final nombreController = TextEditingController();

  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          ImputTextLogin(
            hintText: 'Nombre',
            icon: const Icon(
              Icons.person_outline_outlined,
            ),
            controller: nombreController,
          ),
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
            text: 'Registrarse',
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
