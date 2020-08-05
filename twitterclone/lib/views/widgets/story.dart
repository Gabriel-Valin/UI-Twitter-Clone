import 'package:flutter/material.dart';
import 'package:twitterclone/models/story.dart';

class StoryWid extends StatelessWidget {
  final _storyImg = [
    Story(
        id: "1",
        image:
            "https://pbs.twimg.com/profile_images/730493939527110656/1tmRuVLp_400x400.jpg",
        name: "@PatoPapão"),
    Story(
        id: "2",
        image:
            "https://pbs.twimg.com/profile_images/1265439066637688835/cqXi0p4T_400x400.jpg",
        name: "@Minverva"),
    Story(
        id: "3",
        image:
            "https://pbs.twimg.com/profile_images/1267986629412741120/Z26Rlg0e_400x400.jpg",
        name: "@maiconkusterk"),
    Story(
        id: "4",
        image:
            "https://pbs.twimg.com/profile_images/1171233929233387520/e60xSrGX_400x400.jpg",
        name: "@Tixinhadois"),
    Story(
        id: "5",
        image:
            "https://pbs.twimg.com/profile_images/1121110877871181824/tuRI_KZo_400x400.jpg",
        name: "@axtlol"),
    Story(
        id: "6",
        image:
            "https://pbs.twimg.com/profile_images/1284786410533326848/PnJtN365_400x400.jpg",
        name: "@BREEZE_FPS"),
    Story(
        id: "7",
        image:
            "https://pbs.twimg.com/profile_images/1131950674781122561/fPvjHogN_400x400.jpg",
        name: "@PatifeGamer"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 0.5, color: Colors.grey),
      )),
      padding: EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: _storyImg.map((stimg) {
          return Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 2, color: Colors.blue)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image(
                    image: NetworkImage(stimg.image),
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                stimg.name,
                style: TextStyle(color: Colors.grey, fontSize: 10),
              )
            ],
          );
        }).toList(),
      ),
    );
  }
}
