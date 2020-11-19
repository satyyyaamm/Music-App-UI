import 'package:flutter/material.dart';
import 'package:music_app_ui/constants/constants.dart';
import 'package:music_app_ui/screens/now_playing.dart';

class Library extends StatelessWidget {
  Widget genresCard(String img, String title, String foll) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(gcard),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 50,
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              '$foll Followers',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // now we will create a template for song list
  Widget songCard(
      int sr, String img, String title, String artist, String time) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$sr'),
            SizedBox(width: 20),
            CircleAvatar(
              backgroundImage: AssetImage(img),
              radius: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  artist,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                )
              ],
            ),
            Spacer(),
            Text(time),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cwhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              'POPULAR',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: cblue,
                letterSpacing: 3,
                fontSize: 20,
              ),
            ),
          ),
          // NOW WE WILL CREATE A SCROLLVIEW FOR DIFFERENT GENRES
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                //  now we will call genrescard wiget and pass data in it
                genresCard(pop, 'POP', '789,889'),
                genresCard(hiphop, 'Hiphop', '989,111'),
                genresCard(country, 'Country', '122,000'),
                genresCard(heavymetal, 'Heavymetal', '99,000'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 40),
            child: Text(
              'TRENDING ALBUMS',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: cblue,
                letterSpacing: 3,
              ),
            ),
          ),
          // container for trending songs
          Container(
            width: MediaQuery.of(context).size.width,
            height: 330,
            padding: EdgeInsets.all(45),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(scard),
            )),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // we will call the songs card template over here
                  songCard(1, art1, 'Blinding Lights', 'The Weekend', '3:11'),
                  songCard(2, art2, 'The Box', 'Roddy Rich', '2:15'),
                  songCard(3, art3, 'Dont Start Now', 'Dua Lipa', '3:52'),
                  songCard(4, art4, 'Circles', 'Post Malone', '3:02'),
                  songCard(5, art5, 'Intensions', 'Justin bieber', '2:59'),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                home,
                scale: 1.1,
              ),
              Image.asset(
                podcast,
                scale: 1.1,
              ),
              Image.asset(
                search,
                scale: 1.1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NowPlaying(),
                    ),
                  );
                },
                child: Image.asset(
                  list,
                  scale: 1.1,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
