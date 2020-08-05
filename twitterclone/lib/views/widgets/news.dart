import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:twitterclone/models/news.dart';

class Newsletter extends StatefulWidget {
  @override
  _NewsletterState createState() => _NewsletterState();
}

class _NewsletterState extends State<Newsletter> {
  final _news = [
    News(
      gender: "Gaming",
      about: "Akira",
      twnumb: "46,1 mil Tweets",
      urlimg: null,
    ),
    News(
      gender: "Assunto do Momento no Brasil",
      about: "Explosão derruba repórter em Beirut",
      twnumb: " ",
      urlimg:
          "https://conteudo.imguol.com.br/c/noticias/e9/2020/08/05/jornalista-e-surpreendida-por-explosao-em-beirute-durante-entrevista-1596633041638_v2_900x506.png",
    ),
    News(
      gender: "Entretenimento",
      about: "LDRV",
      twnumb: "3.588 Tweets",
      urlimg: null,
    ),
    News(
      gender: "Música do Brasil",
      about: "Léo Santana",
      twnumb: "1.088 Tweets",
      urlimg: null,
    ),
    News(
      gender: "Assunto do momento em São Paulo",
      about: "#LEGOBATMAN",
      twnumb: "2.612 Tweets",
      urlimg: null,
    ),
    News(
      gender: "Assunto do momento em Brasil",
      about: "João Pessoa",
      twnumb: "17 mil Tweets",
      urlimg: null,
    ),
    News(
      gender: "Música - Esta manhã",
      about: "Parece que tem uma nova era da Miley chegando...",
      twnumb: " ",
      urlimg: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        leading: Icon(Icons.menu, color: Colors.blue),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(FontAwesome.gear, color: Colors.blue),
          )
        ],
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 35,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Center(
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      hintText: "Busca do Twitter",
                      hintStyle: TextStyle(color: Colors.white))),
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 8.0),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image(
                          image: NetworkImage(
                              "https://media0.giphy.com/media/QK47sPIxzYyrJV56TA/giphy.gif?cid=ecf05e4782sdb7iyfenjyocp65blmwv6wjc7m7d0ua9ra68z&rid=giphy.gif")),
                      Container(
                          height: 200,
                          //color: Colors.red,
                          padding: EdgeInsets.only(top: 100.0),
                          child: ListTile(
                            title: Text("Filmes e séries - Hoje",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                            subtitle: Text(
                                "Espectadores de GOT ficam impressionados com nova cena da série.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                          ))
                    ],
                  ),
                  Column(
                      children: _news.map((nw) {
                    return Container(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(width: 0.5, color: Colors.grey),
                        )),
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Container(
                              child: Wrap(children: <Widget>[
                            Row(children: <Widget>[
                              Text(nw.gender,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey,
                                      fontSize: 12)),
                              SizedBox(width: 8.0),
                            ])
                          ])),
                          subtitle: Container(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(nw.about,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(nw.twnumb,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                        overflow: TextOverflow.ellipsis),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ));
                  }).toList())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
