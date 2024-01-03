import 'package:flutter/material.dart';
import 'package:amor/dominio/entidades/mesaje.dart';


class MisMesajes extends StatelessWidget {
  // ignore: non_constant_identifier_names
final Mesaje  mensaje;
  const MisMesajes({super.key, 
  required this.mensaje, 
  

  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(40)),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
           mensaje.text ,
              style:  const TextStyle(
                  color: Colors.white,
                  fontFamily: AutofillHints.fullStreetAddress,
                  fontSize: 20),
            ),
          ),
        ),
        const SizedBox(height: 5)
      ],
    );
  }
}
