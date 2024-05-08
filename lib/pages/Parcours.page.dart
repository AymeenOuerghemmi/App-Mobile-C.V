import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import the FontAwesomeFlutter package to use custom icons

import '../Menu/drawer.widget.dart';

class ParcoursPage extends StatelessWidget {
  const ParcoursPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Parcours Académique",
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
            Icons.menu_book_rounded,
            size: 48,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Section Baccalauréat
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.school,
                            size: 48,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 16),
                          Text(
                            "Baccalauréat Sc.Technique",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.graduationCap, // Utilize FontAwesome icon to represent a graduation cap
                            size: 16,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Année d'obtention : 2019",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.location_city, // Utilize city icon to represent the institution
                            size: 16,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Établissement : Lycée 9 Avril Nabeul",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset(
                          'images/Bac.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Section Licence
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_balance,
                            size: 48,
                            color: Colors.green,
                          ),
                          SizedBox(width: 16),
                          Text(
                            "Licence en Informatique Industrielle\n"
                                " et Automatique",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.graduationCap,
                            size: 16,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Année d'obtention : 2022",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.location_city,
                            size: 16,
                            color: Colors.black54,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Établissement:Institut Supérieur de Gestion Industrielle",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset(
                          'images/licence.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
