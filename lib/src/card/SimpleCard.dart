import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  const SimpleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          width: 350,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(-5, 3), // muda a posição da sombra
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF9c44dc),
                Color(0xFF442c61),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.only(top: 60, right: 30, left: 30),
          child: Column(
            // Esta é a coluna com o parêntese de fechamento ausente
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/147/147142.png'),
                ),
                title: Text(
                  'Andre Diniz',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ), // Corrige erro de digitação
                textColor: Colors.white,
                subtitle: Text(
                  'Web Designer',
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 13,
                  ),
                ),
                trailing: Icon(
                  Icons.computer_outlined,
                  size: 27,
                ),
                iconColor: Colors.white,
              ),
              SizedBox(height: 10), // Adiciona um espaço entre ListTile e a Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5), // Espaçamento consistente
                  Text(
                    '(41)984952918',
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'Righteous'),
                  ),
                  SizedBox(width: 5), // Espaçamento consistente
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5), // Espaçamento consistente
                  Text(
                    'diniz@gmail.com',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {}, // Adicione a ação do botão aqui
                    child: Text(
                      'CONTATE-ME',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ), // Adicionado o parêntese de fechamento aqui
        ),
      ],
    );
  }
}
