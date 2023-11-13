import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int selectedSkillIndex = -1; // Index of the selected skill

  final List<SkillItem> skills = [
    SkillItem(name: 'Programming', percentage: 60),
    SkillItem(name: 'Flutter', percentage: 58),
    SkillItem(name: 'UI/UX Design', percentage: 98),
    SkillItem(name: 'Java', percentage: 83),
    SkillItem(name: 'Teamwork', percentage: 92),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Skills',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skills that I have:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSkillIndex = index;
                      });
                    },
                    child: SkillCard(
                      skill: skills[index],
                      isSelected: index == selectedSkillIndex,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final SkillItem skill;
  final bool isSelected;

  SkillCard({required this.skill, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      color: isSelected ? Colors.blue : null,
      child: ListTile(
        title: Text(
          skill.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : null,
          ),
        ),
        subtitle: LinearProgressIndicator(
          value: skill.percentage / 100,
          backgroundColor: Colors.grey,
          valueColor: AlwaysStoppedAnimation<Color>(
            Colors.red,
          ),
        ),
        trailing: Text(
          '${skill.percentage}%',
          style: TextStyle(
            color: isSelected ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}

class SkillItem {
  final String name;
  final int percentage;

  SkillItem({
    required this.name,
    required this.percentage,
  });
}
