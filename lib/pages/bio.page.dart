import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../Menu/drawer.widget.dart';
import 'package:cvv/pages/map.dart';

class BioPage extends StatelessWidget {
  const BioPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Bioghraphie",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: Color(0xFF3b5998),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('images/profil.jpg'),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "À propos de moi",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(height: 1, color: Colors.grey),
                    ListTile(
                      leading: Icon(Icons.question_mark),
                      title: Text(
                        "Qui je suis?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Diplomé en Licence Nationale en Electronique et Automatique, spécialité Informatique Industrielle et Automatique",
                            style: TextStyle(fontSize: 16),
                          ),
                          Divider(height: 10, color: Colors.transparent),
                          Text(
                            "Actuellement je suis un étudiant en 2ème année, cycle d'ingénieur en génie informatique à l'Institut Internationale de Technologie",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Informations de contact",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(height: 1, color: Colors.grey),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        "Nom :",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "OUERGHEMMI Aymen",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(height: 1, color: Colors.grey),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text(
                        "Téléphone :",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "+216 52 211 396",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(height: 1, color: Colors.grey),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text(
                        "Adresse :",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Km 8 Rte El Ain, Sfax ,Tunisie",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(height: 1, color: Colors.grey),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text(
                        "Mail :",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "werghemiaymen@gmail.com",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(height: 1, color: Colors.grey),
                    SizedBox(height: 20),
                    // Boutons pour les réseaux sociaux
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(Icons.facebook),
                          onPressed: () {
                            launchUrlString('https://www.facebook.com/154.aymen');
                          },
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.instagram),
                          onPressed: () {
                            launchUrlString('https://www.instagram.com/aymeenwe/');
                          },
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.whatsapp),
                          onPressed: () {
                            launchUrlString('https://wa.me/+21652211396');
                          },
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.linkedin),
                          onPressed: () {
                            launchUrlString('https://www.linkedin.com/in/aymen-ouerghemmi-287b50204/');
                          },
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          onPressed: () {
                            launchUrlString('https://github.com/AymeenOuerghemmi');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Cadre pour la carte Google Maps
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Localisation",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 300,
                      child: Map(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
