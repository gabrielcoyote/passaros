import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passaros/Model/CustomSearchDelegate.dart';
import 'package:passaros/Model/Passaro.dart';
import 'Detalhe.dart';







class Home extends StatefulWidget { //metodo necessario para funcionamento do codigo
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> { // criar variaveis

  String _resultado = "";

  @override
  Widget build(BuildContext context) {
    // inicia o codigo
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
              color: Color.fromARGB(255, 7, 7, 7),
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
      fit: BoxFit.cover,
    );
  }


  _body() { // declarando os itens na lista
    List<Passaro> passaros = [
      Passaro("Papagaio verdadeiro", "arquivos/Imagem/papagaio.png","Amazona aestiva",
          "Psittacidae","280 – 510 g","33 – 38 cm","Alimenta-se de sementes e frutos, "
              "são conhecidos pela sua grande Costume de reproduzir em buracos de rochas"
              " erodidas, barrancos ou ocos de árvores, os filhotes permanecem no "
              "ninho por cerca de 2 meses, o período de reprodução é de setembro a março."
              " Demora 5 anos pra chegar a idade adulta."
              " Habita florestas úmidas, savanas, floresta de galeria, áreas "
              "cultivadas com árvores e matas com palmeiras, até 1.600 m."
              " Comum viver em casais ou bandos. Macho e fêmea voam tão juntos um "
              "do outro que o casal parece ser uma grande e fabulosa ave de "
              "quatro asas, o que se observa inclusive quando estão em bando."
              " A melhor defesa que possui é ficar imóvel e calado. É freqüentemente"
              " “canhoto”, razão pela qual o pé esquerdo é melhor desenvolvido."
              " Boceja ocasionalmente. Para dormir reúne-se em bandos. Estão cada "
              "vez mais sendo encontrados em áreas urbanas como de São Paulo e Rio"
              " de Janeiro."),

      // OKAY


      Passaro("João de Barro", "arquivos/Imagem/joao.png","Furnarius rufus",
          "Furnariidae","49 g","18 - 20 cm"
          ,"O pássaro, revirando as folhas, busca cupins, formigas ou içás no solo"
              " ou sob troncos caídos. Alimenta-se também de outros invertebrados,"
              " como minhocas e possivelmente moluscos. "
              "É muito comum em paisagens abertas, como campos, cerrados, pastagens,"
              " ao longo de rodovias e em jardins. Caminha pelo chão em busca de"
              " insetos, frequentemente pousando em postes, cercas, galhos isolados"
              " e outros pontos que permitam uma boa visão dos arredores. Vive"
              " geralmente aos casais. Canta em dueto (macho e fêmea juntos,"
              " cada qual de um modo um pouco diferente) nos arredores do ninho,"
              " em postura altiva e tremulando as asas, com um canto extremamente "
              "estridente. Há várias lendas sobre esta espécie e a mais famosa, "
              "que já virou até tema de uma canção intitulada João-de-barro,"
              " diz que se o macho for traído ele pode trancar a fêmea no ninho"
              " até que ela morra. Tal comportamento nunca foi registrado "
              "cientificamente. Uma provável dificuldade para a utilização"
              " dos ninhos é a temperatura de seu interior, que lhes confere o"
              " nome forno tanto no nome científico Furnarius"
              "É a ave Tambem símbolo da Argentina. "),

      // OKAY
      Passaro("Papa capim", "arquivos/Imagem/PapaCapim.png","Sporophila nigricollis",
          "Thraupidae","9,6 g","11 cm"
          ,"Se alimentam exclusivamente de néctar, sugando-o com o seu longo bico"
              " pontiagudo. Chegam a visitar mais de 1500 flores por dia, parando"
              " em frente a elas para se alimentar com asas que podem chegar a bater"
              " 90 vezes por segundo! Quem vê um deles parado no meio do ar "
              "(uma habilidade única de todos os beija-flores), apenas consegue "
              "ver um vago borrão, como se não houvesse asas ali de tão rápido."
              " Por isso, e pelo seu tamanho, chamá-los de 'abelhas com penas' "
              "é mais do que adequado. Com um alto metabolismo, gastam cerca de 15%"
              " do dia comendo para suprir suas altas necessidades energéticas."
              " À noite, para economizarem energia, diminuem sua temperatura"
              " normal de 41°C para próximo de 30°C (!). Vivendo bastante para"
              " um animal do seu tamanho, essa espécie pode alcançar uma"
              " expectativa de vida de 10 anos, mas geralmente não ultrapassam "
              "os 7 anos em ambiente selvagem. Como habitam um restrito território,"
              " o qual sofre com a devastação ambiental, eles, infelizmente, estão"
              " próximos de ficarem ameaçados de extinção."),

      // OKAY


      Passaro("Colibri abelha cubano", "arquivos/Imagem/Abelha.png","Mellisuga helenae",
          "Trochilidae","1,6 – 2 g","5 – 6,1 cm"
          ,"Importantes polinizadores, se alimentam exclusivamente de néctar, "
              "sugando-o com o seu longo bico pontiagudo. Chegam a visitar mais"
              " de 1500 flores por dia, parando em frente a elas para se alimentar"
              " com asas que podem chegar a bater 90 vezes por segundo! Quem "
              "vê um deles parado no meio do ar (uma habilidade única de todos "
              "os beija-flores), apenas consegue ver um vago borrão, como se não "
              "houvesse asas ali de tão rápido. Por isso, e pelo seu tamanho, "
              "chamá-los de 'abelhas com penas' é mais do que adequado, "
              "Com um alto metabolismo, gastam cerca de 15% do dia comendo para "
              "suprir suas altas necessidades energéticas. À noite, para economizarem "
              "energia, diminuem sua temperatura normal de 41°C para próximo de"
              " 30°C (!). Vivendo bastante para um animal do seu tamanho, essa "
              "espécie pode alcançar uma expectativa de vida de 10 anos, mas "
              "geralmente não ultrapassam os 7 anos em ambiente selvagem. Como"
              " habitam um restrito território, o qual sofre com a devastação"
              " ambiental, eles, infelizmente, estão próximos de ficarem ameaçados "
              "de extinção."),

      // OKAY


      Passaro("Gaivota prateada", "arquivos/Imagem/gaivota.png","Larus argentatus",
          "Laridae","1,5 kg","60 – 67 cm"
          ,"Assim como as outras espécies do gênero Larus, a gaivota-prateada é "
              "considerada onívora e oportunista. É comum que elas recorram a "
              "lixões e aterros sanitários em busca de alimento em regiões mais"
              " urbanizadas. Essa ave também tem o hábito de roubar os ovos de "
              "outras gaivotas. Embora não consiga atingir grandes profundidades"
              " (um a dois metros), a gaivota-prateada realiza pequenos mergulhos"
              " no mar para capturar suas presas aquáticas, como peixes e crustáceos."
              " Essa espécie já foi flagrada usando pedaços de pão como isca para"
              " atrair peixes à superfície. É comum também que ela enxague seus "
              "alimentos para limpá-los ou torná-los mais palatáveis antes de engolir."
              "atinge a maturidade sexual aproximadamente aos quatro anos de idade."
              " Durante o cortejo, a fêmea se aproxima do macho em seu próprio "
              "território com uma postura encurvada e submissa enquanto emite "
              "sons de mendicância. Se o macho aceitar, ele responderá assumindo "
              "uma postura ereta e fazendo uma chamada, Após esse primeiro contato,"
              " são feitos movimentos sincronizados com a cabeça, após o qual"
              " o macho irá regurgitar algum alimento para o sua companheira."
              " Se ela aceitar, a cópula ganha continuidade."),

      // OKAY

      Passaro("Canario", "arquivos/Imagem/Canario.png","Serinus canaria ",
          "Fringillida","8,4 – 24 g","10 – 12 cm"
          ,"Os canários são animais granívoros, ou seja, alimenta-se de grãos e"
              " sementes que encontram em seu habitat. Criadores de canários"
              " costumam alimenta-los com misturas, que podem ser encontradas em"
              " comércios ou feitas em casa, utilizando sementes de alta qualidade,"
              " como: alpiste, linhaça, semente de rabanete, semente de alface,"
              " semente de endívia, aveia, semente de cânhamo, negrillo. Esses"
              " pássaros também podem se alimentar de vegetais e fruta seca, que "
              " são muito importante para fornecê-los uma grande quantidade de vitaminas."
              " Considerado doméstico, é o contrário. Muito dócil, ele adora estar"
              " na companhia do tutor e de outros canarinhos, mas sempre fique"
              " atento com o convívio em uma gaiola só. Afetuosos e inteligentes,"
              " podem ficar triste quando passam muito tempo sozinhos."),

      // OKAY

      Passaro("Melro preto", "arquivos/Imagem/Merlo.png","Turdus merula",
          "Turdídeo","100 g","23 – 28  cm"
          ,"Comum em zonas arborizadas na maioria da sua área de distribuição, "
              "o melro-preto tem preferência por florestas de folha caduca com "
              "vegetação rasteira densa, podendo também ser encontrado em zonas"
              " arbustivas, campos de cultivo, jardins ou parques, mesmo em zonas"
              " urbanas. Os jardins fornecem os melhores locais de nidificação, "
              "acomodando até 7,3 pares, tendo as zonas arborizadas geralmente"
              " um décimo dessa densidade e os campos abertos ou demasiado"
              " urbanizados ainda menos."
              "O melro-preto não é gregário, exibindo um comportamento territorial"
              " nos locais de nidificação. Os machos estabelecem o seu território"
              " durante o primeiro ano de vida, e defendem-no por toda a vida."
              " Durante a época de nidificação o macho defende o seu território "
              "afugentando outros machos ou utilizando uma exibição de ameaça,"
              " que consiste numa pequena corrida, primeiro levantando a cabeça "
              "e depois baixando-a em simultâneo com a cauda."),

      // OKAY

      Passaro("Pintassilgo", "arquivos/Imagem/Pissaldigo.png","Carduelis carduelis",
          "Fringillidae","16 g","11 – 13 cm"
          ,"Alimenta-se de sementes, principalmente sementes de flores e pequenos frutos secos, de revestimento duro, "
              "Nidifica tanto nas copas das araucárias mais altas como em cafeeiros."
              " A fêmea constrói o ninho em forma de pequena tigela, com raízes finas, "
              "sem revestimento ou forrado de penas e crinas, na forquilha de árvores"
              " ou de arbustos, a pouca altura do solo (3 a 4 metros). Os ovos são brancos,"
              " com pouco azul-celeste, às vezes com algumas pintas pardas e medem cerca"
              " de 16 por 12 milímetros. A incubação também é tarefa da fêmea, podendo"
              " o macho alimentá-la durante este período. Cada ninhada geralmente tem "
              "entre 3 e 5 ovos, tendo de 2 a 4 ninhadas por temporada. Os filhotes"
              " nascem após 13 dias e atingem a maturidade sexual aos 10 meses."
              "Vive em mata secundária aberta, ""árvores em plantações e quintais,"
              " ""pinhais e cerrados. Essa ave"" canora tornou-se um pássaro raro,"
              " devido principalmente à ""intensa perseguição do comércio clandestino"
              " de aves silvestres."),

      // OKAY

      Passaro("Bico de veludo", "arquivos/Imagem/Veludo.png","Schistochlamys ruficapillus",
          "Thraupidae","38 g","18 cm"
          ,"Granívoro. Alimenta-se também de frutos e pequenos insetos. Aprecia muito os frutos do tapiá ou tamanqueiro"
              "Ocorrem 2 ou 3 posturas por temporada. Põe 2 ou 3 ovos. O período"
              " de incubação leva cerca de 13 dias. Os filhotes ficam independentes entre 35 e 40 dias."
              "Pode ser encontrado em cerrados, caatingas, campos de altitude, "
              "campos sujos, jardins e acima da linha de florestas."
              "Vive solitário ou aos pares, pousado em arbustos baixos, com "
              "frequência em áreas bastante abertas. Junta-se a bandos mistos "
              "eventualmente. Pousa no topo de pequenas árvores para cantar e olhar."),

      // OKAY

      Passaro("Tiziu", "arquivos/Imagem/Tiziu.png","Volatinia jacarina",
          "Thraupidae","100 g","11,5 cm"
          ,"Alimenta-se principalmente de sementes de gramíneas como a braquiária, mas também captura insetos. "
              "Costuma frequentar comedouros com sementes e quirera de milho."
              "Procria em qualquer época do ano, pelo menos em algumas regiões"
              " quentes próximas à linha do Equador, como em Belém (PA). "
              "Quando solta seu canto"" o macho dá um salto curto para o ar e "
              "mostra uma região branca sob a"
              " asa, voltando a empoleirar-se no mesmo local. Acredita-se que este"
              " ritual seja para defender seu território. Faz ninho na forma de uma "
              "xícara fina e profunda, sobre gramíneas. Põe de 1 a 4 ovos branco-azulados"
              " com pontos marrom-avermelhados."
              "Estes pequenos pássaros são vistos com grande frequência, geralmente aos pares,"
              " em áreas alteradas, descampados, savanas, campos e capoeiras baixas"
              " da América do Sul, exceto no extremo sul. Vive aos pares durante o período reprodutivo,"
              " porém, fora deste, reúne-se em bandos que podem chegar a dezenas de indivíduos."
              " Nestas situações, frequentemente mistura-se a outras espécies de pássaros"
              " que alimentam-se de sementes. desaparece durante o inverno, migrando para regiões mais quentes."),

      // OKAY

      Passaro("Tordo comum", "arquivos/Imagem/Tordo.png","Turdus philomelos",
          "Turdidae","68 g","20 - 22 cm "
          ,"é omnívoro, consumindo uma grande variedade de invertebrados, especialmente"
              " minhocas e caracóis, assim como bagas e drupas. Tal como o seu parente,"
              " o melro-preto (Turdus merula), caça principalmente com a visão,"
              " corre aos trancos e barrancos enquanto caça em terreno aberto, e"
              " revira folhas em decomposição de forma barulhenta e demonstrativa em busca de alimento.,"
              "Tipicamente, o Tordo Comum forma ninho em florestas com bastante vegetação"
              " rasteira e zonas abertas próximas, e na Europa Ocidental usa também jardins e parques."
              "A fêmea constrói sozinha o ninho em forma de taça com lama e ervas "
              "secas, geralmente forrado com radículas e erva coladas com saliva,"
              "num arbusto, árvore, trepadeira ou, no caso da subespécie T. p. hebridensis,"
              " no chão. O macho canta por perto enquanto a fêmea constrói o ninho,"
              " mas não participa na construção."
              "Cada postura possui habitualmente quatro ou cinco ovos brilhantes "
              "de cor azul, salpicados com pequenas manchas negras ou roxas."),

      // OKAY

      Passaro("Trinca ferro", "arquivos/Imagem/TrincaFV.png","Saltator similis",
          " Thraupidae","43g","20 cm"
          ,"O trinca-ferro-verdadeiro é um típico onívoro, alimentando-se de frutos,"
              " insetos, sementes, folhas e flores (como as do ipê). Aprecia os"
              " frutos do tapiá ou tanheiro (Alchornea glandulosa). Na infância,"
              " seu regime alimentar é predominantemente animal. O macho costuma"
              " trazer alimento para sua fêmea."
              "O ninho, construído em arbustos a 1 a 2 metros de altura, é uma "
              "tigela espaçosa, com cerca de 12 centímetros de diâmetro externo,"
              " feita com folhas grandes e secas seguras por alguns ramos,"
              " resultando uma construção frouxa; no interior são colocadas "
              "pequenas raízes e ervas. Os 2 ou 3 ovos, alongados, medem cerca de"
              " 29 por 18 milímetros e são azul-claros ou verde-azulados, com "
              "manchas pequenas e grandes no polo rombo, formando uma coroa. "
              "Durante o período de reprodução, vive estritamente aos casais,"
              " sendo extremamente fiel a um território."
              "Vive em capoeiras, bordas de matas e clareiras. Está sempre associado"
              " às matas, ocupando o estrato médio e superior."),

      // OKAY

      Passaro("Tucano toco", "arquivos/Imagem/Tucano.png","Ramphastos toco",
          "Ramphastidae","540 g","61 cm"
          ,"Sua dieta consiste basicamente de frutas, insetos e artrópodes, mas"
              " também costuma saquear ninhos de outras aves e devorar ovos e "
              "filhotes. Devido a essa característica, são prontamente perseguidos"
              " pelas aves em período reprodutivo. Faz seu ninho em árvores ocas,"
              " buracos em barrancos ou em cupinzeiros. Costuma botar de dois a "
              "quatro ovos, que são incubados por período de 16 a 18 dias. O macho"
              " costuma alimentar a fêmea na época da reprodução. Vivem em casais "
              "no período reprodutivo, formando bandos após a saída dos filhotes dos ninhos."
              "Vive aos pares ou em bandos de duas dezenas de aves que voam em fila indiana."
              " Voa com o bico reto, em linha com o pescoço, alternando curtas batidas com "
              "um planar mais demorado."
              " Comunicam-se com chamados graves, parecendo um pouco o mugido do gado"
              "Habitam as matas de galeria, cerrado, capões; única espécie da família"
              " Ramphastidae que não vive exclusivamente na floresta, sobrevoa freqüentemente"
              " os campos abertos e rios largos; gosta de pousar sobre árvores altaneiras. "
              "Menos sociável que os outros tucanos."),

      // OKAY

      Passaro("Cardeal do norte", "arquivos/Imagem/CardinalN.png","Cardinalis cardinalis",
          "Cardinalidae","43 g","21 – 24 cm"
          ,"A dieta do cardeal do norte consiste principalmente (até 90%) de sementes"
              " de ervas daninhas, grãos e frutas. É um alimentador de solo e encontra"
              " comida enquanto pula no chão por entre árvores ou arbustos. Também "
              "consumirá caracóis e insetos, incluindo besouros, cigarras e gafanhotos"
              " ; alimenta seus filhotes quase exclusivamente com insetos."
              "Os casais podem acasalar por anos sucessivos, mas alguns também se"
              " 'divorciam' entre as temporadas ou escolhem um novo parceiro quando"
              " um morre. Os pares geralmente ficam juntos o ano todo, mas não"
              " são necessariamente monogâmicos. Estudos de DNA de duas populações"
              " de cardeais descobriram que entre 9 e 35% dos filhotes não eram filhos"
              " do companheiro da fêmea. "
              "Habita mata ""baixa rala e bem ensolarada (caatinga) e beira de rios (cerrado)."
              " Um dos pássaros mais típicos do interior do Nordeste do Brasil. "
              "Durante a reprodução vive estritamente aos casais, sendo extremamente"
              " fiéis a um território, defendido pelo macho. Atinge a maturidade"
              " sexual aos 10 meses. Cada ninhada geralmente tem entre 2 e 3 ovos,"
              " tendo de 2 a 4 ninhadas por temporada; Os filhotes nascem "
              "após 13 dias Costuma cantar logo ao alvorecer."),

      // OKAY

      Passaro("Cuco canoro", "arquivos/Imagem/Cuco.png"," Cuculus canorus",
          "Cuculidae","110 g","32 - 34 cm  "
          ,"É uma espécie bastante ecléctica na selecção do habitat, que é sobretudo"
              " condicionada pela presença de hospedeiros. No entanto, rejeita a tundra"
              " árctica, as zonas desérticas, as florestas muito densas e as zonas urbanas."
              " Em África, existem registos da invernada em savana e em zonas de coqueiros."
              " Em Portugal ocorre em zonas de montados, pomares, sebes, matas, caniçais e matagais."
              "É uma espécie parasita, o que significa que, em vez de construir um ninho,"
              " deposita os seus ovos nos ninhos de outras aves, nomeadamente de pequenos"
              " insectívoros, como a ferreirinha-comum, o pisco-de-peito-ruivo e o rouxinol-"
              "pequeno-dos-caniços, entre outras espécies. As aves em cujos ninhos os ovos"
              " são colocados recebem o nome de hospedeiros e ficam com a tarefa de cuidar"
              " do jovem cuco até este ser independente."
              " Tem este nome por causa do chamamento "
              "do macho, que é o conhecido “CUU-cuu” repetido várias vezes."
              "É uma ave extraordinária, pois sem conhecer os pais, o Cuco guia-se"
              " pelas estrelas e pelo sol a fim de alcançar local de origem, "
              "voltando todos os anos exatamente ao mesmo local onde viu pela primeira vez a luz do sol."),

      // OKAY

      Passaro("Pica pau rei", "arquivos/Imagem/PicaPau.png","Campephilus robustus",
          "Picidae","200 g","36 cm"
          ,"Possui dieta insetívora, forrageando em árvores infestadas"
              " pelos mais variados tipos de insetos e larvas. Martelam o tronco com "
              "força, perfurando a casca, e capturam as presas com a língua pegajosa"
              " de ponta afiada. A língua móvel é também adequada para lamber o sumo de "
              "frutas moles. Assim,"
              "Utiliza troncos de diferentes estratos vegetacionais de ambientes florestais,"
              " cujas cavidades servem como nidificação, dormitório e abrigo. Seu "
              "período reprodutivo compreende os meses de outubro e novembro "
              " Casal elabora com grande dedicação a cavidade em que nidifica, em muitos casos "
              "fazendo uma a cada estação reprodutiva. Os pica-paus procuram sobretudo árvores "
              "mortas, senis ou que resistiram a queimadas ou ainda cujo cerne foi enfraquecido "
              "por fungos. Preferem cavar na face que se inclina para o solo, o que facilita a "
              "proteção contra a defesa da entrada. Para marcação de território ou para comunicação"
              " entre machos e fêmeas, usa vocalização e, até certo ponto, também o “tamborilar”."
              " Outro tipo de batimento repetitivo constitui o “cinzelar”, usado para procura de"
              " alimentos ou para construção de cavidades para nidificação."),

      // OKAY

      Passaro("Gavião asa de telha","arquivos/Imagem/Gaviao.png","Parabuteo unicinctus",
          "Accipitridae","725 - 1047 g","46 - 56 cm",
              "O gavião asa-de-telha é muito estratégico, pode caçar todo tipo de ave até o porte de uma galinha,"
              " mamíferos até o porte de um coelho, já tendo sido encontrados entre os"
              " restos das suas presas gambás, frangos d’água, pombas silvestres, ratos"
              " do mato, passarinhos diversos, codornas, pequenas garças, entre outros."
              "Bota de dois a quatro ovos (em média três), cuja incubação dura 33 a 36 dias."
              " As crias são totalmente dependentes dos pais durante os primeiros tempos"
              " de vida, igualmente nas outras aves de rapina. Os juvenis abandonam o ninho "
              "com cerca de 40 dias, mas permanecem próximo deste durante três a quatro meses."
              "Habita regiões campestres, sendo comum em áreas de várzeas, manguezais, "
              "pastagens, campos de cultivo e campos nativos como o cerrado e a caatinga,"
              "e está cada vez mais comum em áreas urbanas como do Rio de Janeiro,"
              "São Paulo e Santos, "
              "Uma característica notável é que esta espécie costuma caçar em bandos,"
              " coisa pouco comum entre as aves de rapina caçadoras, já que a maioria"
              " é antissocial. É bastante inteligente, caçando cooperativamente."),

      // OKAY

      Passaro("Gralha azul", "arquivos/Imagem/Gralha.png","Cyanocorax caeruleus",
          "Corvidae ","270 g","39 cm ",
          "E uma ave onívora. Se alimenta de frutos diversos, pinhão, "
              "ovos e filhotes de outras aves, pequenos vertebrados e invertebrados,"
              " e restos de alimentos humanos, como pão."
              "No período reprodutivo que se inicia em outubro e se prolonga até"
              " março, todos os indivíduos colaboram na construção de ninhos nas "
              "partes mais altas das mais altas árvores, preferencialmente na coroa "
              "central da araucária, quando lá existente. No ninho feito de gravetos,"
              " de cerca de 50 cm de diâmetro, em forma de taça, são postos 4 ovos,"
              " em média, com coloração azul-esverdeados com numerosas manchas claras."
              " Apresenta o"
              " hábito de esconder sementes de pinheiro , como meio de guardar comida,"
              " esquecendo-se com freqüência de algumas delas.Esse ato pode ser considerado"
              " com um ato de dispersão. Por isso, acredita-se que a gralha-azul seja "
              "importante para a germinação e desenvolvimento do pinheiro-do-paraná.")

      // OKAY

    ];

    return ListView.builder( // buider funciona como o scrow para rolar a tela
      itemCount: passaros.length,
      padding: EdgeInsets.all(0),
      itemExtent: 500,
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
      child: Card(

        color: Color.fromARGB(190, 55, 219, 15),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      ClipRRect(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(190, 55, 219, 15),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(150),
                            color: Colors.black),
                           child: _imagem(passaro.imagem),
                          ),
                        borderRadius: BorderRadius.circular(150),
                        ),
                      SizedBox(height: 10),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 0.0),
                child: Row(children: <Widget>[
                  Text(passaro.nome ,textAlign: TextAlign.start, style: TextStyle(
                      fontFamily: 'Righteous',
                      fontSize: 32,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 0, 0, 0)
                  ),),
                  Spacer(),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 0.0),
                child: Row(
                  children: <Widget>[
                    Text(passaro.NC,textAlign: TextAlign.start,
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontFamily: "CormorantGaramond",
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 0, 0, 0)),),
                    Spacer(),
                    Icon(Icons.play_arrow_sharp, size: 35,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );






  }
}
