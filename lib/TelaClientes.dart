
import 'package:flutter/material.dart';

double radiusImages = 8.0;


class TelaClientes extends StatefulWidget {
  const TelaClientes({Key? key}) : super(key: key);

  @override
  State<TelaClientes> createState() => _TelaClientesState();
}

class _TelaClientesState extends State<TelaClientes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Nossos clientes",
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
                        child:Image.asset("imagens/clientes2.jpeg",
                          height: 65,
                          width: 65,
                        ),
                      ),
                      Padding (
                        padding: EdgeInsets.only(right:15, left: 15),
                        child: Text( "Conheça os nossos clientes",
                          style: TextStyle (
                              color: Colors.purple,
                              fontSize: 18
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                      child: Image.asset("imagens/clienteschroeder.png"),
                  ),
                  Text(
                      "Prefeitura de Schroeder",
                      style: TextStyle (
                          color: Colors.black87,
                          fontSize: 20
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                    child: Image.asset("imagens/clientesguaramirim.png"),
                  ),
                  Text(
                      "Prefeitura de Guaramirim",
                    style: TextStyle (
                        color: Colors.black87,
                        fontSize: 20
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                    child: Image.asset("imagens/clientemassaranduba.png"),
                  ),
                  Text(
                    "Prefeitura de Massaranduba",
                    style: TextStyle (
                        color: Colors.black87,
                        fontSize: 20
                    ),
                  )
                ]
            ),
          )
      ),
    );
  }
}
