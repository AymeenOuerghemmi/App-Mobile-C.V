import 'package:flutter/material.dart';
import '../Menu/drawer.widget.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Compétences",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: Color(0xFF3b5998),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SkillTile(
              skillName: "Langages de programmation",
              skills: [
                Skill(name: "Dart", level: 90, icon: Icons.code),
                Skill(name: "JavaScript", level: 80, icon: Icons.code),
                Skill(name: "Python", level: 70, icon: Icons.code),
              ],
            ),
            SizedBox(height: 20),
            SkillTile(
              skillName: "Logiciels",
              skills: [
                Skill(name: "Flutter", level: 90, icon: Icons.mobile_friendly),
                Skill(name: "React Native", level: 80, icon: Icons.mobile_friendly),
                Skill(name: "Firebase", level: 70, icon: Icons.cloud),
              ],
            ),
            SizedBox(height: 20),
            SkillTile(
              skillName: "Langues",
              skills: [
                Skill(name: "Français", level: 90, icon: Icons.language),
                Skill(name: "Anglais", level: 80, icon: Icons.language),
                Skill(name: "Arabe", level: 70, icon: Icons.language),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Skill {
  final String name;
  final int level;
  final IconData icon;

  Skill({required this.name, required this.level, required this.icon});
}

class SkillTile extends StatelessWidget {
  final String skillName;
  final List<Skill> skills;

  const SkillTile({
    Key? key,
    required this.skillName,
    required this.skills,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              skillName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: skills.map((skill) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Icon(skill.icon),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Text(skill.name),
                      ),
                      Expanded(
                        flex: 7,
                        child: LinearProgressIndicator(
                          value: skill.level / 100,
                          backgroundColor: Colors.grey[300],
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
