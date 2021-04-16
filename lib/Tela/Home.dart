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
      Passaro("Papagaio", "arquivos/Imagem/papagaio.png","Amazona",
          "Psittacidae","240 g","28 – 33 cm"
      ,"São conhecidos pela sua grande habilidade vocal, alegria e destreza com"
              " os pés. São leais e conhecidos por serem boas companhias. Alguns "
              "dizem que criar um deles é como ter um filho de dois anos, mas que"
              " pode chegar aos cinquenta. Entretanto, algumas espécies são agressivas"
              " (principalmente na época do acasalamento) e exigem mais atenção do que o "
              "necessário a um animal de estimação comum, como um gato ou um cachorro. São "
              "aves muito inteligentes e precisam de atenção diária para mantê-los mentalmente"
              " saudávéis, além de precisarem de atividades estimulantes para mantê-los ativos."),


      Passaro("João de Barro", "arquivos/Imagem/joao.png","Furnarius rufus",
          "Furnariidae","49 g","18 - 20 cm"
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


      Passaro("Coleiro", "arquivos/Imagem/coleiro.png","Sporophila caerulescens",
          "Thraupidae","11 g","10-12 cm"
          ,"Fora do período reprodutivo, é uma ave de comportamento gregário, "
              "vivendo em grupos de 6 a 20 indivíduos, inclusive às vezes formando"
              " grupos mistos com outras espécies de papa-capins e tizius. "
              "O peso e tamanho reduzidos permitem a esta ave alcançar as sementes"
              " de gramíneas trepando pela haste das plantas. Assim como outras aves,"
              " o coleirinho foi beneficiado pela introdução de algumas gramíneas africanas,"
              " especialmente da braquiária, que parece ser a base de sua alimentação"
              " em áreas alteradas pelo homem. As populações mais meridionais são migratórias"
              " e deslocam-se para latitudes mais baixas nos meses mais frios."),


      Passaro("Beija Flor", "arquivos/Imagem/beijaflor.png","Trochilidae",
          "Trochilidae","45 g","10 cm"
          ,"Tal como a maioria das aves,o olfato não está muito desenvolvido nos"
              " beija-flores; a visão, no entanto, é muito apurada. Além de "
              "poderem identificar cores, os beija-flores são dos poucos"
              " vertebrados capazes de detectar cores no espectro ultravioleta."
              "A alimentação dos beija-flores é baseada em néctar"
              " (cerca de noventa por cento) e artrópodes, em particular moscas e formigas."
              "Os beija-flores são poligâmicos."),


      Passaro("Gaivota", "arquivos/Imagem/gaivota.png","Larus argentatus",
          "Laridae","1,5 kg","60 – 67 cm"
          ,"A plumagem da gaivota prateada é cinzenta no dorso e asas e branca "
              "na cabeça, garganta e barriga. As patas são rosa acinzentadas, e"
              " tem uma mancha vermelha na ponta do bico amarelo. É em tudo "
              "semelhante à gaivota-de-patas-amarelas distinguindo-se apenas "
              "pela cor das patas. Tal como a maioria das outras gaivotas, a "
              "espécie tem uma alimentação de características oportunísticas, "
              "roubando peixe a outras aves marinhas ou aproveitando lixo ou "
              "cadáveres. As posturas de cerca de três ovos são feitas em zonas"
              " rochosas ou penhascos. Ambos os progenitores defendem o "
              "ninho e os juvenis com agressividade."),

      Passaro("Canario", "arquivos/Imagem/Canario.png","Serinus canaria ",
          "Fringillida","8,4 – 24 g","10 – 12 cm"
          ,"Considerado doméstico, é o contrário. Muito dócil, ele adora estar"
              " na companhia do tutor e de outros canarinhos, mas sempre fique"
              " atento com o convívio em uma gaiola só. Afetuosos e inteligentes,"
              " podem ficar triste quando passam muito tempo sozinhos."),

      Passaro("Melro-preto", "arquivos/Imagem/Merlo.png","Turdus merula",
          "Turdídeo","100 g","23 – 28  cm"
          ,"O melro-preto não é gregário, exibindo um comportamento territorial"
              " nos locais de nidificação. Os machos estabelecem o seu território"
              " durante o primeiro ano de vida, e defendem-no por toda a vida.[52]"
              " Durante a época de nidificação o macho defende o seu território "
              "afugentando outros machos ou utilizando uma exibição de ameaça,"
              " que consiste numa pequena corrida, primeiro levantando a cabeça "
              "e depois baixando-a em simultâneo com a cauda."),

      Passaro("Pintassilgo", "arquivos/Imagem/Pissaldigo.png","Carduelis carduelis",
          "Fringillidae","16 g","11 – 13 cm"
          ,"Alimenta-se de sementes, principalmente sementes de flores e pequenos frutos secos, de revestimento duro, "
              "Vive em mata secundária aberta, ""árvores em plantações e quintais,"
              " ""pinhais e cerrados. Essa ave"" canora tornou-se um pássaro raro,"
              " devido principalmente à ""intensa perseguição do comércio clandestino"
              " de aves silvestres."),

      Passaro("Bico de veludo", "arquivos/Imagem/Veludo.png","Schistochlamys ruficapillus",
          "Thraupidae","38 g","18 cm"
          ,"Pode ser encontrado em cerrados, caatingas, campos de altitude, "
              "campos sujos, jardins e acima da linha de florestas"
          "Vive solitário ou aos pares, pousado em arbustos baixos, com frequência"
              " em áreas bastante abertas. Junta-se a bandos mistos eventualmente."
              " Pousa no topo de pequenas árvores para cantar e olhar."),

      Passaro("Tiziu", "arquivos/Imagem/Tiziu.png","Volatinia jacarina",
          "Thraupidae","100 g","11,5 cm"
          ,"Estes pequenos pássaros são vistos com grande frequência, geralmente aos pares,"
              " em áreas alteradas, descampados, savanas, campos e capoeiras baixas"
              " da América do Sul, exceto no extremo sul. Vive aos pares durante o período reprodutivo,"
              " porém, fora deste, reúne-se em bandos que podem chegar a dezenas de indivíduos."
              " Nestas situações, frequentemente mistura-se a outras espécies de pássaros"
              " que alimentam-se de sementes. Em regiões do Sudeste e Sul do País,"
              " como em São Paulo, desaparece durante o inverno, migrando para regiões mais quentes."),

      Passaro("Tordo comum", "arquivos/Imagem/Tordo.png","Turdus philomelos",
          "Turdidae","50-107 g","20–23 cm "
          ,"O tordo-comum é uma espécie territorial monogâmica, e nas áreas em que"
              " é migratório os machos reestabelecem o seu território nos locais"
              " de nidificação logo que regressam. Em zonas mais temperadas algumas "
              "aves são residentes, com os machos a permanecer no seu território"
              " durante o inverno, cantando intermitentemente, enquanto as fêmeas"
              " podem estabelecer um território separado até à formação dos pares"
              " no início da primavera. A parada nupcial incluí o canto e algumas"
              " exibições de corte por parte do macho, que se aproxima da fêmea"
              " com a cauda aberta e achatada no chão, e a cabeça inclinada para"
              " trás com o bico aberto."),

      Passaro("Trinca ferro ", "arquivos/Imagem/TrincaFV.png","Saltator similis",
          "Cardinalidae","43g","20 cm"
          ,"Vive em capoeiras, bordas de matas e clareiras. Está sempre associado"
              " às matas, ocupando o estrato médio e superior.O ninho, "
              "construído em arbustos a 1 a 2 metros de altura, é uma tigela "
              "espaçosa, com cerca de 12 centímetros de diâmetro externo, "
              "feita com folhas grandes e secas seguras por alguns ramos, "
              "resultando uma construção frouxa; no interior são colocadas "
              "pequenas raízes e ervas. Os 2 ou 3 ovos, alongados, medem cerca"
              " de 29 por 18 milímetros e são azul-claros ou verde-azulados, "
              "com manchas pequenas e grandes no polo rombo, formando uma coroa."
              " Durante o período de reprodução, vive estritamente aos casais, "
              "sendo extremamente fiel a um território."),

      Passaro("Tucano toco", "arquivos/Imagem/Tucano.png","Ramphastidae",
          "Ramphastidae","620 g","61 cm"
          ,"vive em pares ou em bandos de duas dezenas de aves que voam em fila "
              "indiana. Voa com o bico reto, em linha com o pescoço, alternando"
              " curtas batidas com um planar mais demorado. Ao dormir vira a "
              "cabeça e descansa o bico nas costas."),

      Passaro("Cardeal do norte", "arquivos/Imagem/CardinalN.png","Cardinalis cardinalis",
          "Cardinalidae","43 g","21 – 24 cm"
          ,"Habita mata baixa rala e bem ensolarada (caatinga) e beira de rios (cerrado)."
              " Um dos pássaros mais típicos do interior do Nordeste do Brasil. "
              "Durante a reprodução vive estritamente aos casais, sendo extremamente"
              " fiéis a um território, defendido pelo macho. Atinge a maturidade"
              " sexual aos 10 meses. Cada ninhada geralmente tem entre 2 e 3 ovos,"
              " tendo de 2 a 4 ninhadas por temporada; na região da caatinga nordestina"
              " só se reproduz uma vez no ano, no período chuvoso. Os filhotes nascem "
              "após 13 dias Costuma cantar logo ao alvorecer, fazendo verdadeiras"
              " alvoradas matinais, embora este comportamento só seja observado"
              " durante o período reprodutivo."),

      Passaro("Cuco canoro", "arquivos/Imagem/Cuco.png"," Cuculus canorus",
          "Cuco","110 g","32 - 34 cm  "
          ,"Tem este nome por causa do chamamento do macho, que é o conhecido “CUU-cuu” repetido várias vezes."
              "É uma ave extraordinária, pois sem conhecer os pais, o Cuco guia-se"
              " pelas estrelas e pelo sol a fim de alcançar local de origem, "
              "voltando todos os anos exatamente ao mesmo local onde viu pela primeira vez a luz do sol."),

      Passaro("Pica pau rei", "arquivos/Imagem/PicaPau.png","Campephilus robustus",
          "Picidae","200 g","36 cm"
          ,"Para marcação de território ou para comunicação entre machos e fêmeas,"
              " usa vocalização e, até certo ponto, também o “tamborilar”. Outro"
              " tipo de batimento repetitivo constitui o “cinzelar”, usado para"
              " procura de alimentos ou para construção de cavidades para nidificação (Sick 1997)."),

      Passaro("gavião asa de telha","arquivos/Imagem/Gaviao.png","Parabuteo unicinctus",
          "Accipitridae","701 - 1029 g","46 - 59 cm"
          ,"Enquanto a maioria das aves de rapina seja solitária, apenas se reunindo"
              " para reprodução e migração, o gavião-asa-de-telha caça em grupos"
              " de dois a seis indivíduos. Acredita-se que isso seja uma adaptação"
              " à falta de presas no clima desértico em que vivem. Em uma técnica"
              " de caça, um pequeno grupo voa à frente e observa, então outro"
              " membro do grupo voa à frente e observa, e isso continua até que"
              " a presa seja ensacada e compartilhada. Em outra, todos os"
              " indivíduos se espalham ao redor da presa."),

      Passaro("Gralha azul", "arquivos/Imagem/Gralha.png","Cyanocorax caeruleus",
          "Corvidae ","270 g","39 cm ",
          "Varia de rara a localmente comum no interior e nas bordas de florestas"
              " e capoeiras arbóreas, principalmente em pinheirais. Porém, não é "
              "correta a opinião de que a gralha-azul seja uma ave típica e exclusiva"
              " dos pinheirais, pois habita também regiões de Mata Atlântica ou mesmo"
              " ilhas florestadas da baía de Paranaguá (litoral paranaense), onde"
              " estas árvores não existem. Vive em grupos pequenos, de 6 a 8 indivíduos."
              " Apresenta o hábito de esconder sementes de pinheiro , como meio"
              " de guardar comida, esquecendo-se com freqüência de algumas delas."
              "Esse ato pode ser considerado com um ato de dispersão. Por isso,"
              " acredita-se que a gralha-azul seja importante para a germinação"
              " e desenvolvimento do pinheiro-do-paraná.")

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
