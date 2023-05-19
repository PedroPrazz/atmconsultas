import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'acessarempresa.dart';
import 'acessarservico.dart';
import 'acessarcontato.dart';
import 'acessarlistaclientes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATM Consultoria'),
        backgroundColor: Color.fromRGBO(111, 194, 150, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 100,
                margin: EdgeInsets.only(top: 150, bottom: 50),
                child: Image(
                  image: AssetImage("imagens/logo.png"),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AcessarEmpresa()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage("imagens/menu_empresa.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AcessarServico()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage("imagens/menu_servico.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AcessarListaClientes()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage("imagens/menu_cliente.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AcessarContato()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage("imagens/menu_contato.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          // Column(
          //   children: <Widget>[
          //     Center(
          //       child: Container(
          //         margin: EdgeInsets.only(top: 80),
          //         width: 320,
          //         height: 50,
          //         child: TextField(
          //           decoration: InputDecoration(
          //             hintText: "Selecione o seu bairro para iniciar",
          //             hintStyle: TextStyle(
          //               fontSize: 17,
          //               color: Colors.grey,
          //             ),
          //             suffixIcon: Icon(Icons.arrow_drop_down),
          //             border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          //             focusedBorder: OutlineInputBorder(
          //               borderSide: BorderSide(color: Colors.blue),
          //             ),
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}
