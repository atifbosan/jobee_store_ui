import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
              "The Application is the smart way of traveling, all with your smartphone and three little taps. Tap and look for your ride, Tap and book your ride and Tap and complete your ride. Your tap brings the driver to you for the best riding experience of your life, each one better than the previous one. No hassles of direction giving as your driver knows exactly where you want to go. Payment completed via your credit card. Just sit back and enjoy your ride!"),
        ),
      ),
    );
  }
}
