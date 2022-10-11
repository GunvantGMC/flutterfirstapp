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
          ],
        ),
      ),
