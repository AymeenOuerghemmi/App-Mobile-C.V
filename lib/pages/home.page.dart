import 'package:flutter/material.dart';
import '../Menu/drawer.widget.dart';
import '../config/global.params.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeMode = Theme.of(context).brightness;
    final isDarkMode = themeMode == Brightness.dark;

    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "CV-Aymen Ouerghemmi",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: Color(0xFF3b5998),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.lightbulb),
            onPressed: () {
              if (isDarkMode) {
                AdaptiveTheme.of(context).setLight();
              } else {
                AdaptiveTheme.of(context).setDark();
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            ...(GlobalParams.homes as List).map((item) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "${item['route']}");
                },
                child: Container(
                  padding: EdgeInsets.all(12), // Add padding for a smaller frame
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Reduce border radius
                    color: isDarkMode ?  Colors.white: Colors.grey[500], // Adaptive background color
                    boxShadow: [
                      BoxShadow(
                        color: isDarkMode ? Colors.grey.withOpacity(0.3) : Colors.black.withOpacity(0.5), // Adaptive shadow color
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        '${item['image']}',
                        height: 80, // Reduce image size
                        width: 80, // Reduce image size
                      ),
                      SizedBox(height: 8),
                      Text(
                        '${item['title']}',
                        style: TextStyle(
                          fontSize: 16, // Reduce font size
                          color: isDarkMode ?  Colors.black: Colors.white, // Adaptive text color
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
