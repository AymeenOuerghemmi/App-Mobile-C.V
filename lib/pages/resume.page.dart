import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Menu/drawer.widget.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key});

  static const String cvDriveLink = 'https://drive.google.com/file/d/1nnij0vAC5pCVdcrFnFZOXGA5LN5JwA2W/view';

  // Fonction pour ouvrir le lien vers votre CV
  Future<void> _downloadCV() async {
    if (await canLaunch(cvDriveLink)) {
      await launch(cvDriveLink);
    } else {
      throw 'Impossible d\'ouvrir le lien vers le CV';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Résumé CV",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: Color(0xFF3b5998),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Contenu de votre résumé de CV
            Text(
              'Voici un résumé de mon CV.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            // Bouton de téléchargement du CV avec l'icône de document
            ElevatedButton.icon(
              onPressed: () {
                _downloadCV();
              },
              icon: Icon(Icons.file_download), // Icône de document
              label: Text('Télécharger CV'),
            ),
          ],
        ),
      ),
    );
  }
}