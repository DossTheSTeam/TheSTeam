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
  int? totalbet,
) {
  double result = (totalgains! / totalmises!) / totalbet!;
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
