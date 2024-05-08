import 'package:flutter/material.dart';

import '../Menu/drawer.widget.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Stages,Expériences et Formations",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: Color(0xFF3b5998),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Icon(
            Icons.work,
            size: 48,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildExperienceItem(
              'Stage de Développement des automates',
              'Durée: 6 mois\nEntreprise: Softsys\nDescription: Stage de développement \ndes automates programmables.',
              'images/stage_attestation_1.png',
            ),
            _buildExperienceItem(
              'Stage de Développement Web',
              'Durée: 2 mois\nEntreprise: Djagora\nDescription: Stage de développement\nd\'une application web de\ndetéction des dons.',
              'images/stage_attestation_2.png',
            ),
            _buildExperienceItem(
              'Expérience en Robotique',
              'Durée: 1 an\nClub: Robotique ISGIS\nDescription: Vice-président du club',
              'images/experience_certificate_1.png',
            ),
            _buildExperienceItem(
              'Expérience en Robotique',
              'Durée: 1 an\nAssociation: IEEE ISGIS SB.\nDescription: Président département robotique\net automatique.',
              'images/experience_certificate_2.png',
            ),
            _buildTrainingItem(
              'Curtifié Scrum',
              'Date: 24/11/2023\nÉtablissement: IIT\nDescription: Formation en méthodologie \nde travail Scrum.',
              'images/training_certificate_1.png',
            ),
            _buildTrainingItem(
              'Curtifié Power BI',
              'Date: 15/06/2021\nÉtablissement: Microsoft\nDescription: Formation en analyse de BigData.',
              'images/training_certificate_2.png',
            ),
            // Add more items for trainings
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceItem(String title, String description, String imagePath) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
      ),
    );
  }

  Widget _buildTrainingItem(String title, String description, String imagePath) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
      ),
    );
  }
}
