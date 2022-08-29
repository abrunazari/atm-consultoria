
import 'package:atm_consultoria/TelaClientes.dart';
import 'package:atm_consultoria/TelaContato.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServico.dart';
import 'package:flutter/material.dart';


double radiusImages = 8.0;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

void _abrirEmpresa (){
  Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => TelaEmpresa() ));
}

void _abrirServico (){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaServico() ));
}

void _abrirCliente (){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaClientes() ));
}

void _abrirContato (){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaContato() ));
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "ATM Consultoria",
          style: TextStyle (
              color: Colors.white,
              fontSize: 20
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Container (
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/ATM.jpeg"),
            Padding(
              padding: EdgeInsets.only(top:32),
            ),
            Padding(
              padding: EdgeInsets.only(left:50, right: 50),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Container (height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(radiusImages),
                          child:Image.asset("imagens/empresa.jpeg")
                      ),
                     ),
                    ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Container (height: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(radiusImages),
                          child: Image.asset("imagens/serviços.jpeg")
                    ),
                   )
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Padding(
              padding: EdgeInsets.only(left:50, right: 50),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Container (height: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(radiusImages),
                          child:Image.asset("imagens/clientes.jpeg")
                    ),
                  )),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: Container (height: 100,
                      child:  ClipRRect(
                          borderRadius: BorderRadius.circular(radiusImages),
                          child: Image.asset("imagens/contato.jpeg"),
                    ),
                   )
                  )
                ],
              ),
            ),
          ]
        ),
      )
    );
  }
}



