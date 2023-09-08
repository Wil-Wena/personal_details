// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  final String slackName = "Wilson Aballey";
  final Uri githubProfileUrl = Uri.parse("https://github.com/Wil-Wena");

  HomeScreen({super.key});

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
        colors: [
          Color(0xFF3366FF),
          Color(0xFF00CCFF),
          Color.fromARGB(255, 78, 126, 138)
        ]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3366FF),
        title: const Center(
            child: Text(
          "Personal Details",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(gradient: gradient),
        ),
        Center(
          heightFactor: 240,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage("assets/wilson.jpg"),
                radius: 150,
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
                child: const Text(
                  "Open GitHub",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ]),
    );
  }
}
