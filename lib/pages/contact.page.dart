import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Menu/drawer.widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key});

  // Adresse email de destination
  static const String emailAddress = 'werghemiaymen@gmail.com';

  // Fonction pour ouvrir l'application de messagerie avec le formulaire de contact pré-rempli
  Future<void> _sendEmail(String subject, String body) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Impossible d\'envoyer l\'email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Contact",
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
            Icons.email_rounded,
            size: 48,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Objet',
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Message',
                ),
                maxLines: 5,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Récupérer les valeurs saisies
                String email = 'test@example.com'; // À remplacer par la valeur du champ Email
                String subject = 'Test Subject'; // À remplacer par la valeur du champ Objet
                String message = 'Test Message'; // À remplacer par la valeur du champ Message

                // Vérifier si les champs sont vides
                if (email.isNotEmpty && subject.isNotEmpty && message.isNotEmpty) {
                  // Envoyer l'email
                  _sendEmail(subject, message);
                } else {
                  // Afficher un message d'erreur si un champ est vide
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Erreur'),
                        content: Text('Veuillez remplir tous les champs.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Envoyer'),
            ),
          ],
        ),
      ),
    );
  }
}