import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = "Press the button to get a random phrase";

  Future<void> fetchRandomPhrase() async {
    const url = "https://gin-demo-production-45b7.up.railway.app";
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> fetchedData = json.decode(response.body);
        setState(() {
          message = fetchedData['message'];
        });
      } else {
        setState(() {
          message = "Failed to fetch a random phrase";
        });
      }
    } catch (error) {
      setState(() {
        message = "An error occurred: $error";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        // Center widget added to make the content centered
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Random Greeting From Database", // Changed text
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              textAlign: TextAlign.center, // Text aligned to center
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              '$message',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              textAlign: TextAlign.center, // Text aligned to center
            ),
            ElevatedButton(
              onPressed: fetchRandomPhrase,
              child: Text('Fetch Random Phrase'),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushNamed(context, "/login");
              },
              child: Container(
                height: 45,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "Sign out",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
