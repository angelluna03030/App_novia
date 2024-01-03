import 'package:amor/dominio/entidades/mesaje.dart';
import 'package:flutter/material.dart';

class MensajedeElla extends StatelessWidget {
  const MensajedeElla({
    super.key,
   required this.mensaje});
  final Mesaje mensaje;


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(40)),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
             mensaje.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: AutofillHints.fullStreetAddress,
                  fontSize: 20),
            ),
          ),
        ),
        const SizedBox(height: 5),
         _ImagenChat(imageUrl: mensaje.imgeURl,),
        const SizedBox(height: 10)
      ],
    );
  }
}

class _ImagenChat extends StatelessWidget {
  final String imageUrl;
  const _ImagenChat({ required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
         imageUrl,
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              width: size.width * 0.7,
              height: 150,
              padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Center(
                  // ignore: unnecessary_const
                  child: const Text(
                "Amor esta enviando un menjase",
                style: TextStyle(fontSize: 15),
              )),
            );
          },
        ));
  }
}
