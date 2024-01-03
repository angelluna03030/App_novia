import 'package:amor/config/theme/add_thme.dart';
import 'package:amor/presentacion/providers/chat_provider.dart';
import 'package:amor/presentacion/screens/chat/escrip.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ChatProvider(

        )
        )
      ],
      child: MaterialApp(
        theme: AddThme(SelecterColor: 2).theme(),
        title: 'amor',
        debugShowCheckedModeBanner: false,
        home: const chat()
      ),
    );
  }
}
