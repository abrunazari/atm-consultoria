
import 'package:flutter/material.dart';

double radiusImages = 8.0;


class TelaServico extends StatefulWidget {
  const TelaServico({Key? key}) : super(key: key);

  @override
  State<TelaServico> createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Nossos serviços",
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
                          child:Image.asset("imagens/serviços2.jpeg",
                            height: 65,
                            width: 65,
                          ),
                        ),
                        Padding (
                          padding: EdgeInsets.only(right:15, left: 15),
                          child: Text( "Conheça os nossos serviços",
                            style: TextStyle (
                                color: Colors.purple,
                                fontSize: 18
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text (
                          "Consultoria"
                      ),
                      ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text (
                          "Cálculo de preços"
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text (
                          "Acompanhamento de projeto"
                      ),
                    ),
                  ]
                ),
              )
          ),
        );
  }
}

