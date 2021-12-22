import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class AnnouncementMyApp extends StatelessWidget {
  const AnnouncementMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void _makeAnnouncement(String message) {
    SemanticsService.announce(message, TextDirection.ltr);
  }

  @override
  Widget build(BuildContext context) {
    _makeAnnouncement("Announcement made");
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("announce"),
          onPressed: () {
            Future.delayed(Duration(milliseconds: 300), () {
              debugPrint('announce');
              SemanticsService.announce("Announcement made", TextDirection.ltr);
            });

          },
        ),
      ),
    );
  }
}