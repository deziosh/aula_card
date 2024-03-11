import 'package:aula_card/src/card/SimpleCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: ('AULA CARD'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Aula Card'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'AULA CARD',
          style: TextStyle(
            fontFamily: 'Righteous',
            color: Colors.white, // Defina a cor desejada aqui
          ),
        ),
        backgroundColor: Color.fromARGB(255, 126, 88, 133),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://pub-static.fotor.com/assets/bg/83ff74b6-f4cd-4efc-8bee-0c652905e265.png'),
            fit: BoxFit.cover,
            opacity: 1,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[SimpleCard()],
          ),
        ),
      ),
    );
  }
}
