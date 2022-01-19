import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String texto, uid;
  final AnimationController animatorcontroller;
  const ChatMessage({
    required this.texto,
    required this.uid,
    required this.animatorcontroller,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animatorcontroller,
      child: SizeTransition(
        sizeFactor:
            CurvedAnimation(parent: animatorcontroller, curve: Curves.easeOut),
        child: Container(
          child: this.uid == '123' ? _myMessasge() : _notMyMessasge(),
        ),
      ),
    );
  }

  Widget _myMessasge() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 5, left: 50, right: 5),
        child: Text(texto,
            style: const TextStyle(
              color: Colors.white,
            )),
        decoration: BoxDecoration(
          color: Color(0xff4D9EF6),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget _notMyMessasge() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 5, right: 50, left: 5),
        child: Text(texto,
            style: const TextStyle(
              color: Colors.black87,
            )),
        decoration: BoxDecoration(
          color: Color(0xffE4E5E8),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
