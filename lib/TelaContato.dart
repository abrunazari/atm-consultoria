
import 'package:flutter/material.dart';

double radiusImages = 8.0;


class TelaContato extends StatefulWidget {
  const TelaContato({Key? key}) : super(key: key);

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Nossos contatos",
          style: TextStyle (
              color: Colors.white,
              fontSize: 20
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView (
          child: Container (
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ClipRRect (
                        borderRadius: BorderRadius.circular(radiusImages),
                        child:Image.asset("imagens/contato2.jpeg",
                          height: 65,
                          width: 65,
                        ),
                      ),
                      Padding (
                        padding: EdgeInsets.only(right:15, left: 15),
                        child: Text( "Entre em contato conosco!",
                          style: TextStyle (
                              color: Colors.blue,
                              fontSize: 18
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text (
                        "atendimento@atmconsultoria.com.br"
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text (
                        "Telefone: (00) 0000-0000"
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text (
                        "Celular: (00) 00000-0000"
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text (
                        "R.  Augusto Mielke,120 - Vila Baependi - Jaraguá do Sul "
                    ),
                  ),
                ]
            ),
          )
      ),
    );
  }
}
