import 'package:flutter/material.dart';
import '../Menu/drawer.widget.dart'; // Import your drawer widget here

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Portfolio",
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
            Icons.workspaces_outline,
            size: 48,
            color: Colors.white,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              "Les projets web:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Image.asset(
                  "images/htmlcssjs-overview.png",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text("HTML,CSS,JS"),
                subtitle: Text("Portfolio WebSite"),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Image.asset(
                  "images/maxresdefault.jpg",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text("Laravel,vueJS"),
                subtitle: Text("law-lead.com"),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Image.asset(
                  "images/Net.png",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text("ASP.NET"),
                subtitle: Text("Appplication web de géstion du Salle des Sports"),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Image.asset(
                  "images/php.png",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text("Php"),
                subtitle: Text("Application web des services à domicile"),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Autres projets:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Image.asset(
                  "images/cloud.png",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text("Cloud Computing"),
                subtitle: Text("Hébergement de site web dans des serveurs distants"),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Image.asset(
                  "images/data.png",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text("DataMining"),
                subtitle: Text("Création d'un model intelligent pour aide  à la prise de décision assurancielle"),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
