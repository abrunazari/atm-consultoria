
import 'package:flutter/material.dart';

double radiusImages = 8.0;

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({Key? key}) : super(key: key);

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "A empresa",
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
                            child:Image.asset("imagens/empresa2.jpeg",
                            height: 65,
                            width: 65,
                            ),
                        ),
                      Padding (
                          padding: EdgeInsets.only(right:15, left: 15),
                          child: Text( "Sobre a empresa",
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
                      child: Text ("A ATM Consultoria é uma organização voltada para o atendimento às Administrações Tributárias Municipais (ATM), oferecendo soluções – através dos seus  profissionais que dispõem da expertise na sua área de atuação (Gestão Pública), em especial quanto à tributação municipal, com foco na otimização dos recursos disponíveis (humanos e materiais), na eficiência com vistas a eficácia, bem como na efetivação da modernização da atividade em destaque."
                      ),
                    ),
                  ]
              )
          ),
        )
    );
  }
}


