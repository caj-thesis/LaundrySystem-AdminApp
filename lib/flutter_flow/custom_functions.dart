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

double calculateTotalSales(List<TransactionsRecord>? transactions) {
  // 1. Safety check: If the list is empty or null, return 0.0
  if (transactions == null || transactions.isEmpty) {
    return 0.0;
  }

  // 2. Loop through the list and add up the price
  double total = 0.0;

  for (var record in transactions) {
    // We use (record.price) assuming the field in Firebase is named 'price'
    // We add '?? 0.0' to handle cases where a specific price might be missing/null
    total += (record.price ?? 0.0);
  }

  return total;
}

DateTime getStartDate(String timeFilter) {
  DateTime now = DateTime.now();

  if (timeFilter == 'Daily') {
    // Returns midnight of the current day
    return DateTime(now.year, now.month, now.day);
  } else if (timeFilter == 'Weekly') {
    // Returns midnight of Monday of the current week
    int currentDay = now.weekday;
    DateTime firstDayOfWeek = now.subtract(Duration(days: currentDay - 1));
    return DateTime(
        firstDayOfWeek.year, firstDayOfWeek.month, firstDayOfWeek.day);
  } else if (timeFilter == 'Monthly') {
    // Returns midnight of the 1st day of the current month
    return DateTime(now.year, now.month, 1);
  }

  // Default fallback is today
  return DateTime(now.year, now.month, now.day);
}
