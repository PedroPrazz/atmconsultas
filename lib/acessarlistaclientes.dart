import 'package:atmconsulta/ClientesBD.dart';
import 'package:atmconsulta/detalhescliente.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AcessarListaClientes extends StatefulWidget {

  @override
  State<AcessarListaClientes> createState() => _AcessarListaClientes();
}

class _AcessarListaClientes extends State<AcessarListaClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Color.fromRGBO(111, 194, 150, 1),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: Clientes[0]['users'].length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DadosClientes(dados: Clientes[0]['users'][index]),
                ),
               );
              },
              leading: Image.network(Clientes[0]['users'][index]['image']),
              title: Text(Clientes[0]['users'][index]['firstName']),
              subtitle: Text(Clientes[0]['users'][index]['email']),
            );
          },
        ),
      ),
    );
  }
}
