import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passaros/Model/Passaro.dart';


class Detalhe extends StatelessWidget {

  final Passaro passaro;


  Detalhe(this.passaro);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 53, 144, 26),
          title: Text(passaro.nome, style: TextStyle(
              fontFamily: 'Righteous',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0)
          ),),
        ),
        body : userDetails()
    );
  }


  _imagem(String img) {
    return Image.asset(
      img,
      width: 280, height: 200,



    );
  }
  userDetails(){
  return  Container(


    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage ("arquivos/Imagem/fundodois.png"),
        fit: BoxFit.cover,
      ),
    ),

    child: Column(
      children: <Widget>[
        Container(
          height: 40,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Container(
                      width: 300,
                      child: Row(
                        children: <Widget>[
                          Text("Nome Cientifico:", style: new TextStyle(fontSize: 15.0,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 48, 48, 54)),),
                          Spacer(),
                          Text(passaro.NC, style: new TextStyle(fontSize: 15.0,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 48, 48, 54)),),
                        ],
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 40,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: Container(
                      width: 300,
                    child: Row(
                      children: <Widget>[
                        Text("Familia:", style: new TextStyle(fontSize: 15.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 48, 48, 54)),),
                        Spacer(),
                        Text(passaro.familia, style: new TextStyle(fontSize: 15.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 48, 48, 54)),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 40,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: Container(
                      width: 300,
                    child: Row(
                      children: <Widget>[
                        Text("Peso:", style: new TextStyle(fontSize: 15.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 48, 48, 54)),),
                        Spacer(),
                        Text(passaro.peso, style: new TextStyle(fontSize: 15.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 48, 48, 54)),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 40,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: Container(
                      width: 300,
                    child: Row(
                      children: <Widget>[
                        Text("Comprimento:", style: new TextStyle(fontSize: 15.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 48, 48, 54)),),
                        Spacer(),
                        Text(passaro.tamanho, style: new TextStyle(fontSize: 15.0,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 48, 48, 54)),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 400,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                  child: Container(
                      width: 400,
                      child: Text(passaro.descricao,textAlign: TextAlign.start, style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 48, 48, 54)
                      ),
                      )
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
    );




  }
}