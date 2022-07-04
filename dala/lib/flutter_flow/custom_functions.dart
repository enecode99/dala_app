import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String formatPrice(int price) {
  // return formated price by separating each  hundred with a comma . eg; 100,000
  String form;
  form = price.toString().replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  return ("$form/=");
}

String formatPriceStr(String price) {
  // return formated price by separating each  hundred with a comma . eg; 100,000
  String form;
  form = price.toString().replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  return ("$form/=");
}

String formatPrice15(double price) {
  // return 15% of mortgageGoal
  String form;
  price = .15 * price;
  // return formated price by separating each  hundred with a comma . eg; 100,000
  form = price.toString().replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  return ("$form/=");
}

String formatPrice15M(double price) {
  // return 15% of mortgageGoal
  String form;
  price = (1.35 * price) * .15;
  // return formated price by separating each  hundred with a comma . eg; 100,000
  form = price.toString().replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  return ("$form/=");
}

String formatPrice15H(double price) {
  // return 15% of mortgageGoal
  String form;
  price = (1.83 * price) * .15;
  // return formated price by separating each  hundred with a comma . eg; 100,000
  form = price.toString().replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  return ("$form/=");
}

String formatPrice30(double price) {
  // return 30% of mortgageGoal
  String form;
  price = .3 * price;
  // return formated price by separating each  hundred with a comma . eg; 100,000
  form = price.toString().replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  return ("$form/=");
}

String formatPrice52(double price) {
  // return 0.521% of 12.5% of price.
  String form;
  price = .125 * price;
  price = .0521 * price;
  // return formated price by separating each  hundred with a comma . eg; 100,000
  form = price.toString().replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  return ("$form/=");
}

String formatPrice521(double price) {
  // return 0.521% of 12.5% of price.
  String form;
  price = .125 * price;
  price = .1042 * price;
  // return formated price by separating each  hundred with a comma . eg; 100,000
  form = price.toString().replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  return ("$form/=");
}

double paidPercent(
  int paidPrice,
  String goalPrice,
) {
  // return percent of paidPrice against goalPrice.
  final goalTotalAmount = num.parse(goalPrice);
  double paidPercent;
  if (goalTotalAmount == 0.0) {
    paidPercent = 0.0;
  } else {
    paidPercent = (paidPrice / goalTotalAmount).clamp(0, 100) * 100;
  }
  paidPercent = (paidPercent / 100);
  return (paidPercent);
}

String progressPercent(
  int paidPrice,
  String goalPrice,
) {
  // return percent of paidPrice against goalPrice.
  final goalTotalAmount = num.parse(goalPrice);
  double paidPercent;
  if (goalTotalAmount == 0.0) {
    paidPercent = 0.0;
  } else {
    paidPercent = (paidPrice / goalTotalAmount).clamp(0, 100) * 100;
  }

  return ("$paidPercent%");
}

DateTime finalDate(DateTime initialDate) {
  // return finalDate 30 days from initialDate.
  return initialDate.isUtc
      ? initialDate.add(Duration(days: 30))
      : initialDate.add(Duration(days: 30)).toLocal();
}

int sumPaid(
  String transCost,
  int paidGoal,
) {
  // return sum of transCost and paidGoal.
  print(transCost.toString());
  print(paidGoal.toString());
  var temp = int.parse(transCost) + paidGoal;
  print(temp.toString());
  return temp;
}

int deffPaid(
  String transCost,
  int paidGoal,
) {
  // return diff of transCost and paidGoal.
  print(transCost.toString());
  print(paidGoal.toString());
  var temp = paidGoal - int.parse(transCost);
  print(temp.toString());
  return temp;
}

bool minTrans(int amount) {
  // Return true if amount is greater than of equal to 100000, else false.
  return amount >= 100000;
}

int midPrice(int price) {
  // return price multiply by 1.35.
  return (price * 1.35).toInt();
}

int highPrice(int price) {
  // return price multiply by 1.83.
  return (price * 1.83).toInt();
}
