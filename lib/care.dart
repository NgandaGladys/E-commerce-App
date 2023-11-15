import 'package:flutter/material.dart';



class SkincareTips extends StatelessWidget {
  final List<String> skincareTips = [
    "Drink plenty of water for hydrated skin.",
    "Exfoliate your skin 1-3 times per week to remove dead skin cells.",
    "Always wear sunscreen to protect your skin from UV(Ultra Violate) rays.",
    "Follow a regular skincare routine: cleanse, tone, moisturize.",
    "Establish a consistent skincare routine and give products time to show results.",
    "Avoid touching your face throughout the day to prevent the spread of bacteria.",
    "Aim for 7-9 hours of quality sleep per night to promote skin repair and regeneration.",
    "Always remove makeup before going to bed to prevent clogged pores and breakouts.",
  ];


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 238, 207),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 104, 19, 13),
        title: Text('Skincare Tips'),
      ),
      body: ListView.builder(
        itemCount: skincareTips.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(
                skincareTips[index],
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
