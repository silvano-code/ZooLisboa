import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'News.dart';

class NewsPage extends StatelessWidget {
  final News news;

  NewsPage({required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novidades por Lisboa"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              news.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 8),
            // Check if the news description contains a YouTube link
            if (news.description.contains('youtube.com'))
              YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: extractYoutubeUrl(news.description),
                    flags: YoutubePlayerFlags(
                      autoPlay: false,
                      mute: false,
                      enableCaption: true,
                    ),
                  ),
                ),
                builder: (context, player) {
                  return player;
                },
              ),
            SizedBox(height: 8),
            Text(
              cleanDescription(news.description),
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Extracts the YouTube video ID from a URL
  // Extracts the YouTube video ID from a URL
  String extractYoutubeUrl(String description) {
    RegExp regExp = RegExp(
      r'https:\/\/www\.youtube\.com\/watch\?v=([a-zA-Z0-9_-]+)',
      caseSensitive: false,
      multiLine: false,
    );

    RegExpMatch? match = regExp.firstMatch(description);

    // Check if the match is not null before accessing its value
    return match?.group(1) ?? '';
  }


  String cleanDescription(String description) {
    return description.replaceAll(
      RegExp(r'https:\/\/www\.youtube\.com\/\S+'),
      '',
    );
  }
}
