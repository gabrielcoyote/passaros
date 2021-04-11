import 'package:flutter/material.dart';
import '../Model/CustomSearchDelegate.dart';
import '../Model/Passaro.dart';
import 'Detalhe.dart';







class Home extends StatefulWidget { //metodo necessario para funcionamento do codigo
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> { // criar variaveis

  String _resultado = "";


  @override
  Widget build(BuildContext context) { // inicia o codigo
    return Scaffold(
        appBar: AppBar( // menu superior
          iconTheme: IconThemeData(
            color: Color.fromARGB(255, 219, 219, 219), // dica sempre tenta usar
            // cores no padrao RGB
          ),
          backgroundColor: Color.fromARGB(255, 53, 144, 26),
          title: Image.asset( // chama imagem
            "arquivos/Imagem/logo.png", // imagem da logo
            width: 98,
            height: 22,
          ),
          actions: <Widget>[
            IconButton( // chama um icon
              icon: Icon(Icons.search),
              onPressed: () async { // ação de click
                String res = await  showSearch(context: context, delegate: CustomSearchDelegate());
                setState(() {
                  _resultado = res;
                });
                print("resultado: digitado " + res );
              },
            ),
          ],
        ),
        body: Container( //corpo do codigo

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage ("arquivos/Imagem/fundo.png"), // imagem de fundo
                fit: BoxFit.cover,
              ),
            ),
            child: _body() // chama o metodo no corpo

        )

    );
  }

  _imagem(String img) { // parametros da imagem
    return Image.asset(
      img,
      width: 110, height: 120,


    );
  }


  _body() { // declarando os itens na lista
    List<Passaro> passaros = [
      Passaro("papagaio", "arquivos/Imagem/papagaio.png","Nome Cientifico:  Amazona",
          "Familia:  Psittacidae","Peso:  240 g","Comprimento:  28 – 33 cm"
      ,"São conhecidos pela sua grande habilidade vocal, alegria e destreza com"
              " os pés. São leais e conhecidos por serem boas companhias. Alguns "
              "dizem que criar um deles é como ter um filho de dois anos, mas que"
              " pode chegar aos cinquenta. Entretanto, algumas espécies são agressivas"
              " (principalmente na época do acasalamento) e exigem mais atenção do que o "
              "necessário a um animal de estimação comum, como um gato ou um cachorro. São "
              "aves muito inteligentes e precisam de atenção diária para mantê-los mentalmente"
              " saudávéis, além de precisarem de atividades estimulantes para mantê-los ativos."),


      Passaro("João de Barro", "arquivos/Imagem/joao.png","Nome Cientifico:  Furnarius rufus",
          "Familia:  Furnariidae","Peso:  49 g","Comprimento:  18 - 20 cm"
          ,"Possui o dorso inteiramente marrom avermelhado (por isso o epíteto "
              "específico rufus). Apresenta uma suave sobrancelha, formada por "
              "penas mais claras, em leve contraste com o restante da plumagem "
              "da cabeça. Rêmiges primárias (penas de voo, nas asas) anegradas, "
              "visíveis em voo, com as asas abertas. Ventralmente é de coloração"
              " clara (alguns indivíduos podem possuir o peito, flancos e barriga"
              " amarronzados, semelhante ao dorso), sendo o queixo e pescoço brancos."
              " Excetua-se a cauda, que é avermelhada tanto dorsal quanto ventralmente."
              " É uma das aves de mais fácil observação nos locais onde ocorre, pois além"
              " de não se afastar muito de seu território não é nem um pouco arisca, "
              "deixando o observador chegar a poucos metros de distância."),


      Passaro("Coleiro", "arquivos/Imagem/coleiro.png","Nome Cientifico:  Sporophila caerulescens",
          "Familia:  Thraupidae","Peso:  11 g","Comprimento:   10-12 cm"
          ,"Fora do período reprodutivo, é uma ave de comportamento gregário, "
              "vivendo em grupos de 6 a 20 indivíduos, inclusive às vezes formando"
              " grupos mistos com outras espécies de papa-capins e tizius. "
              "O peso e tamanho reduzidos permitem a esta ave alcançar as sementes"
              " de gramíneas trepando pela haste das plantas. Assim como outras aves,"
              " o coleirinho foi beneficiado pela introdução de algumas gramíneas africanas,"
              " especialmente da braquiária, que parece ser a base de sua alimentação"
              " em áreas alteradas pelo homem. As populações mais meridionais são migratórias"
              " e deslocam-se para latitudes mais baixas nos meses mais frios."),


      Passaro("Beija Flor", "arquivos/Imagem/beijaflor.png","Nome Cientifico:  Trochilidae",
          "Familia:   Trochilidae","Peso:  45 g","Comprimento:  10 cm"
          ,"Tal como a maioria das aves,o olfato não está muito desenvolvido nos"
              " beija-flores; a visão, no entanto, é muito apurada. Além de "
              "poderem identificar cores, os beija-flores são dos poucos"
              " vertebrados capazes de detectar cores no espectro ultravioleta."
              "A alimentação dos beija-flores é baseada em néctar"
              " (cerca de noventa por cento) e artrópodes, em particular moscas e formigas."
              "Os beija-flores são poligâmicos."),


      Passaro("Gaivota", "arquivos/Imagem/gaivota.png","Nome Cientifico:   Larus argentatus",
          "Familia:  laridae ","Peso:  1,5 kg","Comprimento:  60 – 67 cm"
          ,"A plumagem da gaivota prateada é cinzenta no dorso e asas e branca "
              "na cabeça, garganta e barriga. As patas são rosa acinzentadas, e"
              " tem uma mancha vermelha na ponta do bico amarelo. É em tudo "
              "semelhante à gaivota-de-patas-amarelas distinguindo-se apenas "
              "pela cor das patas. Tal como a maioria das outras gaivotas, a "
              "espécie tem uma alimentação de características oportunísticas, "
              "roubando peixe a outras aves marinhas ou aproveitando lixo ou "
              "cadáveres. As posturas de cerca de três ovos são feitas em zonas"
              " rochosas ou penhascos. Ambos os progenitores defendem o "
              "ninho e os juvenis com agressividade.")
    ];

    return ListView.builder( // buider funciona como o scrow para rolar a tela
      itemCount: passaros.length,
      padding: EdgeInsets.all(5),
      itemExtent: 150,
      itemBuilder: (BuildContext context, int index) {
        return _itemView(passaros, index);

      },
    );
  }

  _itemView(List<Passaro> passaros, int index) { // alimentação da lista
    Passaro passaro = passaros[index];

      return  GestureDetector(  onTap: () { // metodo especifico para click
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => Detalhe(passaros[index])));
      },
          child: Card( // criação do card
            borderOnForeground: true,
            elevation: 7,
            color: Color.fromARGB(255, 175, 247, 156),
            child: Container(
              height: 150.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 0.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            topLeft: Radius.circular(45)
                        )
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 100,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5,0, 0, 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _imagem(passaro.imagem),
                          ]),
                    ),
                  ),
                  Container(

                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                                width: 200,
                                child: Text(passaro.nome ,textAlign: TextAlign.start, style: TextStyle(
                                    fontFamily: 'Oswald',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 48, 48, 54)
                                ),
                                )
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 21, 0, 0),
                            child: Container(
                                width: 220,
                                child: IconButton(
                                  icon: Icon(Icons.play_arrow_rounded),
                                  alignment: Alignment.bottomRight ,
                                  color: Color.fromARGB(255, 1, 1, 1),
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      );






  }
}
