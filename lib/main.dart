import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          centerTitle: true,
          title: const Text('FALCI HACI'),
          backgroundColor: Colors.purple,
        ),
        body: FalciHome(),
      ),
    );
    ;
  }
}

class FalciHome extends StatefulWidget {
  FalciHome({Key? key}) : super(key: key);

  @override
  State<FalciHome> createState() => _FalciHomeState();
}

class _FalciHomeState extends State<FalciHome> {
  int number = 0;
  List<String> fal = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et',
  ];
  //

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        children: [
          Container(
            height: 40,
          ),
          Container(
            width: 150,
            child: Image.asset('assets/images/falci.png'),
          ),
          Container(
            height: 30,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(1),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.red.shade100),
                ),
                onPressed: () {
                  setState(() {
                    number = Random().nextInt(5) + 1;
                  });
                },
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 30,
                  ),
                  title: Text(
                    '     Aşk Durumu',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.white,
          ),
          Container(
            height: 15,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(1),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.green.shade100),
                ),
                onPressed: () {
                  setState(() {
                    number = Random().nextInt(5) + 6;
                  });
                },
                child: ListTile(
                  leading: Icon(
                    Icons.money,
                    color: Colors.green[600],
                    size: 30,
                  ),
                  title: Text(
                    '     Para Durumu',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green[600],
                    ),
                  ),
                ),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.white,
          ),
          Container(
            height: 15,
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(1),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.yellow.shade50),
                ),
                onPressed: () {
                  setState(() {
                    number = Random().nextInt(5) + 11;
                  });
                },
                child: ListTile(
                  leading: Icon(
                    Icons.sunny,
                    color: Colors.yellow[700],
                    size: 30,
                  ),
                  title: Text(
                    '    Günlük Tavsiye',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow[700],
                    ),
                  ),
                ),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.white,
          ),
          Container(height: 15),
          Container(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  fal[number],
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
