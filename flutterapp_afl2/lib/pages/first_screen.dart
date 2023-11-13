import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Experience')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(
              image: 'assets/isu.jpg',
              title: 'Informatics Student Union',
              subTitle: 'as Vice President',
              description: 'Committed to fostering a collaborative and engaging environment for all students in the field of informatics. I work closely with the President and other members of the executive team to ensure that the union is a platform for innovation, learning, and professional development.',
              icon: 'assets/logoisu.jpg',
            ),
            CustomCard(
              image: 'assets/infinity.jpg',
              title: 'Infinity Gen 2',
              subTitle: 'as Media Coordinator',
              description: 'Take pride in overseeing and managing our organization media presence. From social media campaigns to press releases, I work diligently to ensure that our message reaches our audience effectively and resonates with our community.',
              icon: 'assets/logoinfinity.jpg',
            ),
            CustomCard(
              image: 'assets/oweek.jpg',
              title: 'Orientation Week 2024',
              subTitle: 'as Coordinator of PDD',
              description: 'involves crafting compelling stories, managing social media campaigns, and fostering connections with the press. Im here to ensure that the world knows about the remarkable work happening within our organization.',
              icon: 'assets/logooweek.jpg',
            ),
            CustomCard(
              image: 'assets/iox.jpg',
              title: 'Google I/O GDG Makassar',
              subTitle: 'as Member of PDD',
              description: 'curating engaging content to managing our online presence, my role is to keep you informed and inspired. Whether its through social media, press releases, or other media channels, Im dedicated to showcasing the heart of our organization.',
              icon: 'assets/logogoogle.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String description;
  final String icon;

  CustomCard({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                height: 200.0,
                width: double.infinity,
              ),
              ListTile(
                title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                textColor: Colors.red,
                subtitle: Text(subTitle, style: TextStyle(fontWeight: FontWeight.w100),),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(description),
              ),
            ],
          ),
          Positioned(
            top: 12.0,
            right: 12.0,
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.white,
              child: Image.asset(
                icon,
                fit: BoxFit.cover,
                width: 20.0,
                height: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
