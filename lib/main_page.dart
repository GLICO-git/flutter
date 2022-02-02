import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

final dummyItems = [
  'Mitrox_logo.png',
  'Mitrox_logo.png',
  'Mitrox_logo.png',
]; // 중간 사진 메뉴

class MainPage extends StatelessWidget {
  final url = 'https://opensea.io/Mitrox_Token_NFT';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () async {
                  await launch(url, forceWebView: true, forceSafariVC: true);
                },
                child: Column(children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  Text('MIRN OpenSea'),
                ]),
              ),
              InkWell(
                onTap: () async {
                  await launch('https://www.mitrox.net/blog',
                      forceWebView: true, forceSafariVC: true);
                },
                child: Column(children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  Text('MIRN BLOG'),
                ]),
              ),
              Column(children: <Widget>[
                Icon(
                  Icons.menu,
                  size: 40,
                ),
                Text('Menu 3'),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.menu,
                  size: 40,
                ),
                Text('Menu 4'),
              ]),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: <Widget>[
                Icon(
                  Icons.menu,
                  size: 40,
                ),
                Text('Menu 5'),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.menu,
                  size: 40,
                ),
                Text('Menu 6'),
              ]),
              Container(
                width: 40,
                height: 40,
                child: Column(children: <Widget>[
                  SizedBox(
                    width: 8,
                    height: 8,
                    child: Image.asset(
                      'Mitrox_logo.png',
                    ),
                  ),
                  Text('Menu 7'),
                ]),
              ),
              Opacity(
                opacity: 0.0,
                child: Column(children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('Menu 8'),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300.0,
        autoPlay: true,
      ),
      items: dummyItems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  i,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] 이것은 공지사항입니다.'),
      );
    });

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
