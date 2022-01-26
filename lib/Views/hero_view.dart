import 'package:flutter/material.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({Key? key}) : super(key: key);
  @override
  _HeroAnimationState createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('Animasi Hero'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(5),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            GestureDetector(
                onTap: () {
                  _halaman_telegram(
                      context, 'Facebook', 'facebook', 'images/facebook.png');
                },
                child: Card(
                  child: Hero(
                      tag: 'Facebook',
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset(
                              'images/facebook.png',
                              height: 120,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'Facebook',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          )
                        ],
                      )),
                )),
            Card(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Image.asset('images/line.png'),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Image.asset('images/whatsapp.png'),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Image.asset('images/twitter.png'),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Image.asset('images/tiktok.png'),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Image.asset('images/instagram.png'),
              ),
            ),
            GestureDetector(
                onTap: () {
                  _halaman_telegram(
                      context, 'Snap Chat', 'snapchat', 'images/snapchat.png');
                },
                child: Card(
                  child: Hero(
                      tag: 'snapchat',
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset(
                              'images/snapchat.png',
                              height: 120,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'Snapchat',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          )
                        ],
                      )),
                )),
            GestureDetector(
                onTap: () {
                  _halaman_telegram(
                      context, 'Telegram', 'telegram', 'images/telegram.png');
                },
                child: Card(
                  child: Hero(
                      tag: 'telegram',
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset(
                              'images/telegram.png',
                              height: 120,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'Telegram',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          )
                        ],
                      )),
                )),
          ],
        ));
  }

  void _halaman_telegram(
      BuildContext context, String title, String tag, String image) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => Scaffold(
              appBar: AppBar(
                title: Text(title),
                backgroundColor: Colors.orange,
              ),
              body: Center(
                child: Column(
                  children: [
                    Hero(
                        tag: tag,
                        child: Image.asset(
                          image,
                          height: 200,
                        ))
                  ],
                ),
              ),
            )));
  }
}
