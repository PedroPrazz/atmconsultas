import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AcessarContato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
        backgroundColor: Color.fromRGBO(111, 194, 150, 1),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 20, left: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image(
                image: AssetImage('imagens/detalhe_contato.png'),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10),
              Container(
                child: Text(
                  'Contato',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ]),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'atendimento@atmconsultoria.com.br\n\nTelefone: (11) 3525-8596\n\nCelular: (11) 99586-5236',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
