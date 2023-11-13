import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            // Add padding to the profile picture and name
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/fotoprofil.jpg'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Rigel Sundun Tandilolo',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Left-align the about me text
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Informatics student that hates all about coding.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Left-align the information rows
            _buildInfoRow('Email', 'rigel@gmail.com', Icons.email, Colors.red),
            _buildInfoRow('Phone Number', '+62 852 4553 3318', Icons.phone, Colors.red),
            _buildInfoRow('Address', 'Sudiang City', Icons.home, Colors.red),
            _buildInfoRow('University', 'UC Makassar', Icons.school, Colors.red),
            _buildInfoRow('Major', 'Informatics', Icons.cast_for_education, Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String content, IconData icon, Color iconColor) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 24,
            color: iconColor,
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                content,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ThirdScreen(),
  ));
}
