import 'package:flutter/material.dart';
import 'package:cvv/config/global.params.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  late SharedPreferences prefs;
  late Brightness themeBrightness = Theme.of(context).brightness;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue, // Modifier la couleur de l'en-tête du tiroir
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/profil.jpg"),
                radius: 60,
              ),
            ),
          ),
          ...List.generate(GlobalParams.menus.length, (index) {
            final item = GlobalParams.menus[index];
            return Column(
              children: [
                ListTile(
                  title: Text(
                    '${item['title']}',
                    style: TextStyle(
                      fontSize: 18,
                      color: themeBrightness == Brightness.light
                          ? Colors.black87
                          : Colors.white, // Modifier la couleur du texte
                    ),
                  ),
                  leading: item['icon'],
                  onTap: () async {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "${item['route']}");
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey[300],
                  indent: 16, // Ajouter un décalage à gauche pour la ligne de séparation
                  endIndent: 16, // Ajouter un décalage à droite pour la ligne de séparation
                ),
              ],
            );
          }),
          SizedBox(height: 16), // Ajouter un espacement en bas du tiroir
        ],
      ),
    );
  }
}
