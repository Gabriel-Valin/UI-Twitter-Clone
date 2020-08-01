import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitterclone/models/drawer.dart';
import 'package:twitterclone/models/tweet.dart';

class Twitter extends StatefulWidget {
  @override
  _TwitterState createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  final _tweets = [
    Tweet(
        id: "t1",
        image:
            "https://pbs.twimg.com/profile_images/1246165720309825538/Z1t8Nr2N_400x400.jpg",
        name: "@StoneDYooda",
        tweet:
            "Obrigado pela live senhores. Volto Amanha com Grounded as 19-20h. ",
        subname: "YoDa SL",
        date: "41min"),
    Tweet(
        id: "t2",
        image:
            "https://pbs.twimg.com/profile_images/1280153372377694209/RJrI-qKb_400x400.jpg",
        name: "@Jukeslol",
        subname: "Jukera",
        tweet: "KOEEEEEEEEEEEEEEEEEE",
        date: "1h"),
    Tweet(
        id: "t3",
        image:
            "https://pbs.twimg.com/profile_images/1288604776100438017/1wvj3pnZ_400x400.jpg",
        name: "@Kamizeon",
        subname: "KamiKat",
        tweet: "A vingança dos main Nami ç_ç",
        date: "Jan 25"),
    Tweet(
        id: "t4",
        image:
            "https://pbs.twimg.com/profile_images/1204111513834930181/lpJy1i6B_400x400.jpg",
        name: "@brttOficial",
        subname: "Felipe Gonçalves",
        tweet: "VÔ, EU CONSEGUI!!!",
        date: "Sep 5"),
    Tweet(
        id: "t5",
        image:
            "https://pbs.twimg.com/profile_images/1230548409867571202/NUWuo-qo_400x400.jpg",
        name: "@smurfdomuca",
        subname: "danyel",
        tweet:
            "https://youtu.be/BeRMjvwijFk\nMais um vídeo merda com conteúdo duvidoso Esse o editor se superou, pior que isso só a live que começará em MINUTOS",
        date: "4h"),
    Tweet(
        id: "t6",
        image:
            "https://pbs.twimg.com/profile_images/1263999978776731663/cag4ljGk_400x400.jpg",
        name: "@Gragolandia",
        subname: "Gragolandia",
        tweet:
            "A procura de um duo rumo ao challenger, estou com 400 pontinhos e preciso de 640\nquem quer jogar cmg até lá.....?",
        date: "Sep 30"),
    Tweet(
        id: "t7",
        image:
            "https://pbs.twimg.com/profile_images/1266394130458071043/72G_q6Z4_400x400.jpg",
        name: "@uphiago",
        subname: "FURIA Hiago",
        tweet:
            "Se temos algum problema, se você tem alguma visão ruim sobre mim ou me odeia por algum motivo, gostaria de dizer que minha DM tá aberta para que possamos mudar isso.\nEstou disposto a dar explicações ou me desculpar por erros que o Hiago do passado cometeu.\nObrigado.",
        date: "Jul 9"),
  ];

  User user1 = User(
      url: "http://www.fundosanimais.com/Imagens/imagens-lobos.jpg",
      name: "m0nk3y_",
      username: "@valin11",
      followers: "101",
      following: "90");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add, size: 40),
      ),
      //backgroundColor: Color(0xff16202a),
      backgroundColor: Colors.black45,
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              Container(
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black45),
                  accountName: Text(user1.name,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Arial")),
                  accountEmail: Text(
                    user1.username,
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Verdana",
                        letterSpacing: 0.6),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(user1.url),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: <Widget>[
                    Text(user1.following,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    Text(
                      " Seguindo",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(width: 16.0),
                    Text(user1.followers,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    Text(
                      " Seguidores",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  //color: Colors.red,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.person_outline,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text("  Perfil",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.format_list_bulleted,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text("  Listas",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.insert_comment,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text("  Tópicos",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.turned_in_not,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text("  Itens salvos",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.flash_on,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text("  Momentos",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      Container(
                        height: 24.0,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 0.5, color: Colors.grey))),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Configurações e privacidade",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Central de Ajuda",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.lightbulb_outline,
                                  color: Color(0xff1da1f3)),
                              onPressed: null),
                          IconButton(
                              icon: Icon(Icons.gradient,
                                  color: Color(0xff1da1f3)),
                              onPressed: null)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        //backgroundColor: Color(0xff16202a),
        backgroundColor: Colors.black45,
        centerTitle: true,
        title: Icon(
          EvaIcons.twitter,
          color: Color(0xff1da1f3),
          size: 40.0,
        ),
        //leading: Icon(
        //Icons.menu,
        //color: Color(0xff1da1f3),
        //size: 30.0,
        //),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.star_border,
              color: Color(0xff1da1f3),
              size: 30.0,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1.0,
        color: Colors.black45,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(width: 0.5, color: Colors.grey),
          )),
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(Icons.home, color: Colors.grey, size: 30),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.search, color: Colors.grey, size: 30),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.notifications, color: Colors.grey, size: 30),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.local_post_office,
                      color: Colors.grey, size: 30),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: _tweets.map((tw) {
          return Container(
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(width: 0.5, color: Colors.grey),
              )),
              padding: EdgeInsets.all(8),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(tw.image),
                  radius: 25,
                ),
                title: Container(
                  //width: 30,
                  //color: Colors.orangeAccent,
                  child: Wrap(
                    children: [
                      Text(tw.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16)),
                      SizedBox(width: 6.0),
                      Text(tw.subname,
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      SizedBox(width: 4.0),
                      Text("•",
                          style: TextStyle(fontSize: 10, color: Colors.grey)),
                      SizedBox(width: 4.0),
                      Text(tw.date,
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(tw.tweet,
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 0.5,
                                fontFamily: "Arial",
                                fontSize: 14)),
                      ),
                      Row(
                        //mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              icon: Icon(Icons.repeat,
                                  color: Colors.grey, size: 20),
                              onPressed: null),
                          SizedBox(width: 8.0),
                          IconButton(
                              icon: Icon(Icons.favorite_border,
                                  color: Colors.grey, size: 20),
                              onPressed: null),
                          SizedBox(width: 8.0),
                          IconButton(
                              icon: Icon(Icons.speaker_notes,
                                  color: Colors.grey, size: 20),
                              onPressed: null),
                          SizedBox(width: 8.0),
                          IconButton(
                              icon: Icon(Icons.call_split,
                                  color: Colors.grey, size: 20),
                              onPressed: null)
                        ],
                      ),
                    ],
                  ),
                ),
              ));
        }).toList(),
      )),
    );
  }
}
