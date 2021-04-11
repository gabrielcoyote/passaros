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
              fontFamily: 'Oswald',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 48, 48, 54)
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
          child: Padding(
            padding: EdgeInsets.fromLTRB(0,10, 0, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _imagem(passaro.imagem),
                ]),
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
                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Container(
                      width: 300,
                      child: Text(passaro.NC ,textAlign: TextAlign.start, style: TextStyle(
                          fontFamily: 'Baskervville-Regular',
                          fontSize: 18,
                          color: Color.fromARGB(255, 48, 48, 54)
                      ),
                      )
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
                      child: Text(passaro.familia ,textAlign: TextAlign.start, style: TextStyle(
                          fontFamily: 'Baskervville-Regular',
                          fontSize: 18,
                          color: Color.fromARGB(255, 48, 48, 54)
                      ),
                      )
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
                      child: Text(passaro.peso ,textAlign: TextAlign.start, style: TextStyle(
                          fontFamily: 'Baskervville-Regular',
                          fontSize: 18,
                          color: Color.fromARGB(255, 48, 48, 54)
                      ),
                      )
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
                      child: Text(passaro.tamanho ,textAlign: TextAlign.start, style: TextStyle(
                          fontFamily: 'Baskervville-Regular',
                          fontSize: 18,
                          color: Color.fromARGB(255, 48, 48, 54)
                      ),
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 230,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 10, 0),
                  child: Container(
                      width: 400,
                      child: Text(passaro.descricao,textAlign: TextAlign.start, style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
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