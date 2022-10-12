import 'package:url_launcher/url_launcher.dart';
import 'package:ck/EnglishNews.dart';
import 'package:ck/NewsApi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int widgetPosIndex = -1;
  List<String> urlList = [
    "https://timesofindia.indiatimes.com/?from=mdr",
    "https://music.youtube.com/browse/FEmusic_language_selection",
    "https://9gag.com/video",
    "https://wallpapercave.com/",
    "https://www.arkadium.com/free-online-games/arcade/",
    "https://www.accuweather.com/",
    "https://chia-anime.su/",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        centerTitle: true,
        title: Text(
          'Jai Gajanan Mauli',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white), //appbar name styling
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber.shade200,
        //Drawer code
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListTile(
              //News Tile
              onTap: () => updateIndex(index: 0),
              trailing: Icon(Icons.newspaper_rounded),
              title: Text(
                'News',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              //Music Tile
              onTap: () => updateIndex(index: 1),
              trailing: Icon(Icons.music_note_rounded),
              title: Text(
                'Music',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              //Videos Tile
              onTap: () => updateIndex(index: 2),
              trailing: Icon(Icons.video_collection_rounded),
              title: Text(
                'Videos',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              //Wallpaper Tile
              onTap: () => updateIndex(index: 3),
              trailing: Icon(Icons.wallpaper_rounded),
              title: Text(
                'Wallpaper',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              //Games Tile
              onTap: () => updateIndex(index: 4),
              trailing: Icon(Icons.games_rounded),
              title: Text(
                'Games',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              //Weather Tile
              // onTap: () {},
              onTap: () => updateIndex(index: 5),
              trailing: Icon(Icons.wb_sunny_rounded),
              title: Text(
                'Weather',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () => updateIndex(index: 6),
              trailing: Icon(Icons.movie_creation_rounded),
              title: Text(
                //Anime Tile
                'Anime',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () => updateIndex(index: 7),
              trailing: Icon(Icons.auto_stories_rounded),
              title: Text(
                //Poems Tile
                'Poems',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              //image insertion
              image: AssetImage("assets/GM.jpg"),
              fit: BoxFit.fill),
        ),
        child: getChildByIndexPos(
          index: widgetPosIndex,
        ),
      ),
    );
  }
    Future<void> _launchUrl(strUrl) async {
    final Uri _url = Uri.parse(strUrl);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
updateIndex({index}) async {
    print('object');
    setState(() => widgetPosIndex = index);
    if (index != -1) await _launchUrl(urlList[index]);
  }

  getChildByIndexPos({required int index}) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Widget widget = Text("");
    switch (index) {
      case -1:
        widget = Container();
        break;
      case 0: //News Marathi
        //widget = _launchURL();
        widget = Text("data");
        break;
      case 1: //News
        widget = HindiWidget();
        break;
      case 2: // Music
        widget = EnglishWidget();
        break;
      case 3: // Video
        widget = EnglishWidget();
        break;
      case 4: //Wallpaper
        widget = EnglishWidget();
        break;
      case 5: //Weather
        widget = EnglishWidget();
        break;
      case 6: //Anime
        widget = EnglishWidget();
        break;
      case 7: //Poems
        widget = EnglishWidget();
        break;
    }
    return widget;
  }
}
