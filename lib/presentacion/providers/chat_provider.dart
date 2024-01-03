// Reemplaza con la ruta correcta
import 'package:amor/config/theme/helpers/get_yes_or_no.dart';
import 'package:flutter/material.dart';
import 'package:amor/dominio/entidades/mesaje.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScroll = ScrollController();
  final getYesorNot = get_yes_or_no();
  List<Mesaje> mesajes = [];

  Future<void> sendMensaje(String text) async {
    // Implementa el método según tus necesidades

    if (text.isEmpty) return;
    final newMensaje = Mesaje(fromWho: FromWho.me, imgeURl: "", text: text);
    mesajes.add(newMensaje);
/* if (text == "hola") {
       final newMensaje = Mesaje(fromWho: FromWho.hers, imgeURl: "", text: "ya no te amo");
    mesajes.add(newMensaje);
    }*/
    if (text.endsWith('?')) {
       HetRespuesta();
    }
    notifyListeners();
    moveScroll();
  }

  Future<void> HetRespuesta() async {
    // ignore: unused_local_variable
    final hetmesaje = await getYesorNot.getAnswer();
    mesajes.add(hetmesaje);
     notifyListeners();
       moveScroll();
  }

  Future<void> moveScroll() async {
    await Future.delayed(const Duration(milliseconds: 200));
    chatScroll.animateTo(chatScroll.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
