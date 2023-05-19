import 'package:atmconsulta/ClientesBD.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DadosClientes extends StatefulWidget {
  var dados;
  DadosClientes({super.key, required this.dados});
  @override
  State<DadosClientes> createState() => _DadosClientes();
}

class _DadosClientes extends State<DadosClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.dados['firstName']),
          backgroundColor: Color.fromRGBO(111, 194, 150, 1),
        ),
        body: Column(children: [
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.network(widget.dados['image']),
            ]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.dados['firstName'] + " " + widget.dados['lastName'],
              ),
              Text(
                widget.dados['phone']
              ),
              Text(
                widget.dados['email']
              ),
              Text(
                widget.dados['address']['city']
              ),
              Text(
                widget.dados['address']['address']
              ),
              Text(
                widget.dados['company']['department']
              ),
              Text(
                widget.dados['bank']['cardType']
              ),
            ],
          ),
        ]
      )
    );
  }
}
