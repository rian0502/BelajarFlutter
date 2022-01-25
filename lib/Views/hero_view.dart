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
        appBar: AppBar(
          title: const Text('Animasi Hero'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: GridView.count(
          padding: EdgeInsets.all(5),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Card(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Image.asset('images/facebook.png'),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.all(20),
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
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Hero(
                        tag: 'snapchat',
                        child: Image.asset('images/snapchat.png')),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  _halaman_telegram(
                      context, 'Telegram', 'telegram', 'images/telegram.png');
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Hero(
                        tag: 'telegram',
                        child: Image.asset('images/telegram.png')),
                  ),
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
                  children: [Hero(tag: tag, child: Image.asset(image,height: 200,))],
                ),
              ),
            )));
  }
}
