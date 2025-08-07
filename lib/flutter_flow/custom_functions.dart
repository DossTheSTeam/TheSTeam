import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double? potentialGain(
  double bet,
  double quotation,
) {
  return bet * quotation;
}

int? averageGoals(
  int? goalsIn,
  int? goalsOut,
) {
  return goalsIn! - goalsOut!;
}

double? averageGoalsPerGame(
  int? goals,
  int? games,
) {
  return goals! / games!;
}

double? averageETeamPoints(
  int? points,
  int? totalGames,
) {
  double result = points! / totalGames!;
  return double.parse(result.toStringAsFixed(2));
}

double? totalEarningsPerBet(
  double? totalgains,
  double? totalmises,
  int? totalbet,
) {
  double result = (totalgains! - totalmises!) / totalbet!;
  return double.parse(result.toStringAsFixed(2));
}

double? averageOdd(
  double? totalgains,
  double? totalmises,
) {
  double result = totalgains! / totalmises!;
  return double.parse(result.toStringAsFixed(2));
}

double? totalOdds(
  double bet,
  double quotation,
) {
  return bet * quotation;
}

double limitOf2Decimal(double myVariable) {
  /// Formate le nombre avec exactement 2 décimales
  return double.parse(myVariable.toStringAsFixed(2));
}

int? totalBetsLooses(
  int? totalbets,
  int? betwin,
) {
  return totalbets! - betwin!;
}

int zeroTo1(int originalIndex) {
  // Retourne l'index incrémenté de 1
  return originalIndex + 1;
}

double? pourcentToValue(
  double stock,
  double pourcent,
) {
  return stock * pourcent;
}

String zeroTo00(int zero) {
  return zero.toString().padLeft(2, '0');
}

bool checkStock(
  double mise,
  double stock,
) {
  if (stock - mise >= 0) {
    return true;
  } else {
    return false;
  }
}

double? roi(
  double? earnings,
  double? mises,
) {
  // Le symbole '?' indique que les variables 'earnings' et 'mises'
  // peuvent être nulles. C'est une bonne pratique pour éviter les erreurs.
  // La première étape est de vérifier si les variables ne sont pas nulles
  // et que la mise n'est pas égale à 0 pour éviter une division par zéro.
  if (earnings != null && mises != null && mises != 0) {
    // Si toutes les conditions sont remplies, on procède au calcul.
    // Le calcul est le suivant : (earnings / mises) * 100
    double result = (earnings / mises) * 100;

    // On retourne le résultat en tant que double, arrondi à deux décimales.
    // La méthode 'toStringAsFixed(2)' renvoie une chaîne de caractères
    // qui doit être reconvertie en double avec 'double.parse'.
    return double.parse(result.toStringAsFixed(2));
  } else {
    // Si l'une des conditions n'est pas remplie (par exemple, si 'mises' est nul ou égal à zéro),
    // on retourne null. C'est une manière sécurisée de gérer les erreurs potentielles
    // sans faire planter l'application.
    return null;
  }
}

double? roc(
  double? earnings,
  double? stock,
) {
  if (earnings != null && stock != null && stock != 0) {
    // Si toutes les conditions sont remplies, on procède au calcul.
    // Le calcul est le suivant : (earnings / stock) * 100
    double result = (earnings / stock) * 100;

    // On retourne le résultat en tant que double, arrondi à deux décimales.
    // La méthode 'toStringAsFixed(2)' renvoie une chaîne de caractères
    // qui doit être reconvertie en double avec 'double.parse'.
    return double.parse(result.toStringAsFixed(2));
  } else {
    // Si l'une des conditions n'est pas remplie (par exemple, si 'stock' est nul ou égal à zéro),
    // on retourne null. C'est une manière sécurisée de gérer les erreurs potentielles
    // sans faire planter l'application.
    return null;
  }
}
