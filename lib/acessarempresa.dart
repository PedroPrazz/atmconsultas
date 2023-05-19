import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AcessarEmpresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empresa'),
        backgroundColor: Color.fromRGBO(111, 194, 150, 1),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 20, left: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Image(
                  image: AssetImage('imagens/detalhe_empresa.png'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Container(
                  child: Text(
                    'Sobre a empresa',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    ),
                  ),
                ),
              ]
            ),
          ),
          Column( 
                children: [
                   Container(
                    margin: EdgeInsets.all(20),
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut metus vel augue molestie dictum eu ac sem. Vivamus aliquam, nibh eget aliquet imperdiet, lectus magna rhoncus urna, in pretium nulla est in ex. Cras tempus blandit porttitor. In vulputate sem turpis, id luctus ipsum egestas eget. Nam quis rutrum urna. Nunc tempus vel erat in tempus. Suspendisse sit amet aliquet augue, sit amet vulputate lorem. Aliquam malesuada eleifend felis ac pharetra. In hac habitasse platea dictumst.Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam lacinia semper lectus. Pellentesque elementum massa mauris, quis posuere nunc fringilla sit amet. Integer maximus finibus sagittis. Praesent dictum magna libero, ac dapibus nulla molestie ac. Duis efficitur sodales metus sit amet auctor. Aliquam at sem quis justo luctus pulvinar. Phasellus a vulputate felis, quis dapibus nisl. Maecenas vel sem orci. In hac habitasse platea dictumst.Fusce venenatis sapien eget arcu mollis, in blandit nulla rutrum. Vestibulum dapibus metus ac lacinia tempor. Morbi sit amet dignissim justo, faucibus malesuada ligula. Suspendisse quis scelerisque urna. Duis ullamcorper, libero et facilisis porttitor, mi odio consectetur augue, sed ornare sem odio eu orci. Fusce iaculis justo vel mi rutrum, quis feugiat diam venenatis. Duis sit amet pulvinar felis, vel pharetra ante. In euismod arcu a odio tincidunt bibendum. Nam in fermentum ipsum, in tincidunt mi.Integer a metus eget justo elementum maximus. Ut metus elit, tempor vel porttitor nec, tristique sed neque.',
                        style: TextStyle(
                          fontSize: 17,
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
