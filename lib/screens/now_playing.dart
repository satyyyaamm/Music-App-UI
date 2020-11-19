import 'package:flutter/material.dart';
import 'package:music_app_ui/constants/constants.dart';
import 'package:wave_progress_bars/wave_progress_bars.dart';

class NowPlaying extends StatefulWidget {
  @override
  _NowPlayingState createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  final List<double> values = [
    9.0,
    31.0,
    20.0,
    15.0,
    15.0,
    16.0,
    14.0,
    27.0,
    41.0,
    0.0,
    27.0,
    51.0,
    67.0,
    42.0,
    54.0,
    60.0,
    36.0,
    66.0,
    16.0,
    3.0,
    3.0,
    64.0,
    61.0,
    51.0,
    37.0,
    41.0,
    29.0,
    46.0,
    16.0,
    55.0,
    0.0,
    0.0,
    41.0,
    44.0,
    9.0,
    66.0,
    58.0,
    64.0,
    45.0,
    29.0,
    23.0,
    50.0,
    35.0,
    21.0,
    34.0,
    7.0,
    27.0,
    35.0,
    63.0,
    29.0,
    4.0,
    36.0,
    63.0,
    60.0,
    62.0,
    59.0,
    48.0,
    38.0,
    48.0,
    23.0,
    22.0,
    49.0,
    2.0,
    39.0,
    47.0,
    1.0,
    32.0,
    43.0,
    33.0,
    27.0
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cwhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                GestureDetector(
                  child: cbutton(back),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Spacer(),
                Text(
                  'NOW PLAYING',
                  style: TextStyle(
                    fontSize: 20,
                    color: cblue,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Spacer(),
                cbutton(options),
                SizedBox(width: 10),
              ],
            ),
            // now we will create ablum art disk
            Container(
              width: 350,
              height: 350,
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(disk),
                ),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(albumart),
                child: CircleAvatar(
                  backgroundColor: cwhite,
                ),
              ),
            ),
            SizedBox(width: 10),
            // Nowe Will Create SongTile A nd Artist Text
            Text(
              'You Need To Calm Down',
              style: TextStyle(
                fontSize: 25,
                color: cblue,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(width: 20),
            // Now We Will Create Music Controller
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cbutton(previous),
                  cbutton(play),
                  cbutton(next),
                ],
              ),
            ),
            SizedBox(height: 20),
            // now we will create wave song progress bar
            Center(
              child: WaveProgressBar(
                listOfHeights: values,
                progressColor: cblue,
                backgroundColor: cwhite,
                initalColor: cblue.withAlpha(100),
                timeInMilliSeconds: 30,
                isHorizontallyAnimated: false,
                isVerticallyAnimated: false,
                width: 350,
                progressPercentage: 40,
              ),
            ),
            SizedBox(height: 20),
            // now we will create time stamp
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: cblue.withAlpha(100),
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' 0:54 ',
                    style: TextStyle(color: cblue, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' | ',
                    style: TextStyle(color: cblue, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' 03:15 '),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
