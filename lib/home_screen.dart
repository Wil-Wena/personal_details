// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  final String slackName = "Wilson Aballey";
  final Uri githubProfileUrl = Uri.parse("https://github.com/Wil-Wena");

  HomeScreen({super.key}); // Replace with your GitHub profile URL

  _launchUrl() async {
    if (!await launchUrl(githubProfileUrl)) {
      throw Exception('Could not launch $githubProfileUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    const gradient = LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF3366FF), Color(0xFF00CCFF)]);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Slack & GitHub Profile")),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(gradient: gradient),
        ),
        Center(
          heightFactor: 240,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage("assets/walk.jpg"),
                radius: 80,
              ),
              const SizedBox(height: 20),
              Text(
                slackName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _launchUrl,
                child: const Text("Open GitHub"),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
