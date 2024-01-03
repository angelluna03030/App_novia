
import 'package:amor/dominio/entidades/mesaje.dart';
import 'package:amor/presentacion/providers/chat_provider.dart';
import 'package:amor/presentacion/widgets/chat/chatdeella.dart';
import 'package:amor/presentacion/widgets/chat/my_mesaje_mio.dart';
import 'package:amor/presentacion/widgets/chat/shared/meseja_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(3.0),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/736x/9f/d6/1c/9fd61c95a34acdd8b2c1c9afccc61e17.jpg")),
          ),
          title: const Text("Amor"),
        ),
        body: _chatVT());
  }
}

// ignore: camel_case_types
class _chatVT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ChatPro = context.watch<ChatProvider>();

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: 400, // Ajusta la altura según tus necesidades
              child: ListView.builder(
                controller: ChatPro.chatScroll,
                itemCount: ChatPro.mesajes.length,
                itemBuilder: (context, index) {
                  final mesaje = ChatPro.mesajes[index];
            
                  return (mesaje.fromWho == FromWho.hers)
                      ? MensajedeElla(mensaje: mesaje)
                      : MisMesajes(mensaje: mesaje);
                },
              ),
            ),
          ),
          //caja de tento
          Mesaje_box(
            onValue: ChatPro.sendMensaje,
          ),
        ],
      ),
    );
  }
}
