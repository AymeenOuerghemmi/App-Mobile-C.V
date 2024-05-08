import 'package:flutter/material.dart';
class GlobalParams {
  static List<Map<String, dynamic>>menus= [
      {"title": "Accueil", "icon": Icon (Icons. home, color: Colors. blue, ) , "route":"/home" },
      {"title": "Biographie", "icon": Icon (Icons.badge, color: Colors.blue, ) ,"route": "/bio"},
      {"title": "Parcours académique", "icon": Icon (Icons.auto_stories_rounded, color:Colors.blue, ) ,"route": "/parcoursAcademic"},
      {"title": "Expériences et Formations", "icon": Icon (Icons.work_outline_outlined, color: Colors. blue, ) ,"route": "/exp"},
      {"title": "Portfolio", "icon": Icon (Icons.workspaces_outline, color: Colors. blue, ) ,"route": "/portfolio"},
      {"title": "Compétences", "icon": Icon (Icons.on_device_training, color:Colors. blue, ) ,"route": "/skill"},
      {"title": "Contact", "icon" : Icon (Icons.contact_page, color: Colors. blue, ) ,"route": "/contact"},
      {"title": "Résumé CV", "icon": Icon (Icons.document_scanner_outlined, color:Colors. blue, ) ,"route": "/resume"},

  ];
  static List<Map<String,dynamic>>homes=[
    {"title": "Biographie","image":"images/bio.png","route":"/bio"},
    {"title": "Parcours académique","image":"images/pa.png","route":"/parcoursAcademic"},
    {"title": "Expériences et Formations","image":"images/exp.png","route":"/exp"},
    {"title": "Portfolio","image":"images/portfolio.png","route":"/portfolio"},
    {"title": "Compétences", "image":"images/skill.png" ,"route": "/skill"},
    {"title": "Contact","image":"images/con.png","route":"/contact"},
    {"title": "Résumé CV","image":"images/res.png","route":"/resume"},
  ];
}