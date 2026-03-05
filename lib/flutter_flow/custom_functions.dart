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
