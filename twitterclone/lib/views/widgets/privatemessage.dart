import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:twitterclone/models/privatemsg.dart';

class PrivateMessage extends StatefulWidget {
  @override
  _PrivateMessageState createState() => _PrivateMessageState();
}

class _PrivateMessageState extends State<PrivateMessage> {
  final _mgs = [
    Message(
        image:
            "https://pbs.twimg.com/profile_images/1264020798026768396/TWgI6Ppq_400x400.jpg",
        date: "2d",
        msg: "Eai parceiro! Tranquilo?",
        name: "Adrian Augusto Romero",
        username: "@mandiocaalol"),
    Message(
        image:
            "https://pbs.twimg.com/profile_images/1248262063048163330/7ANbd6wa_400x400.jpg",
        date: "13/07/2020",
        msg:
            "GGWP! Perdimos! Até amanhã obrigado pelo apoio e desculpem pelo meu desempenho ruim hoje.",
        name: "hastad",
        username: "@hastadlol"),
    Message(
        image:
            "https://pbs.twimg.com/profile_images/1287165893819195393/1m-9FeKC_400x400.jpg",
        date: "3h",
        msg:
            "aquela aulinha de controle de wave e laning phase que todo mundo gosta... ",
        name: "insta: ayel.lol",
        username: "@ayellol"),
    Message(
        image:
            "https://pbs.twimg.com/profile_images/1267311171914391553/nc1HucJ-_400x400.jpg",
        date: "20/02/2019",
        msg:
            "Síndrome de impostor é uma das piores coisas que existe. A minha sorte é que a minha normalmente não me para, mas faz um mal que rouli",
        name: "Ken Harusame",
        username: "@KenHarusame"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        elevation: 0,
        title: Text("Mensagens"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(FontAwesome.gear),
          )
        ],
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 8.0),
          Padding(
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
                        hintText: "Buscar pessoas ou grupo",
                        hintStyle: TextStyle(color: Colors.white))),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: _mgs.map((msg) {
                return Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.grey),
                    )),
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(msg.image),
                        radius: 25,
                      ),
                      title: Container(
                        child: Wrap(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(msg.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12)),
                                SizedBox(width: 4.0),
                                Container(
                                  child: Text(msg.username,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        msg.date,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        msg.msg,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ));
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
