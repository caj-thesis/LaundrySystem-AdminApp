import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingsRecord extends FirestoreRecord {
  SettingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "clothesPrice" field.
  double? _clothesPrice;
  double get clothesPrice => _clothesPrice ?? 0.0;
  bool hasClothesPrice() => _clothesPrice != null;

  // "bedSheetPrice" field.
  double? _bedSheetPrice;
  double get bedSheetPrice => _bedSheetPrice ?? 0.0;
  bool hasBedSheetPrice() => _bedSheetPrice != null;

  // "laundryShopName" field.
  String? _laundryShopName;
  String get laundryShopName => _laundryShopName ?? '';
  bool hasLaundryShopName() => _laundryShopName != null;

  // "overdueHours" field.
  int? _overdueHours;
  int get overdueHours => _overdueHours ?? 0;
  bool hasOverdueHours() => _overdueHours != null;

  // "receiptFootnote" field.
  String? _receiptFootnote;
  String get receiptFootnote => _receiptFootnote ?? '';
  bool hasReceiptFootnote() => _receiptFootnote != null;

  // "minBedSheetPrice" field.
  int? _minBedSheetPrice;
  int get minBedSheetPrice => _minBedSheetPrice ?? 0;
  bool hasMinBedSheetPrice() => _minBedSheetPrice != null;

  // "minClothesPrice" field.
  int? _minClothesPrice;
  int get minClothesPrice => _minClothesPrice ?? 0;
  bool hasMinClothesPrice() => _minClothesPrice != null;

  void _initializeFields() {
    _clothesPrice = castToType<double>(snapshotData['clothesPrice']);
    _bedSheetPrice = castToType<double>(snapshotData['bedSheetPrice']);
    _laundryShopName = snapshotData['laundryShopName'] as String?;
    _overdueHours = castToType<int>(snapshotData['overdueHours']);
    _receiptFootnote = snapshotData['receiptFootnote'] as String?;
    _minBedSheetPrice = castToType<int>(snapshotData['minBedSheetPrice']);
    _minClothesPrice = castToType<int>(snapshotData['minClothesPrice']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('settings');

  static Stream<SettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SettingsRecord.fromSnapshot(s));

  static Future<SettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SettingsRecord.fromSnapshot(s));

  static SettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSettingsRecordData({
  double? clothesPrice,
  double? bedSheetPrice,
  String? laundryShopName,
  int? overdueHours,
  String? receiptFootnote,
  int? minBedSheetPrice,
  int? minClothesPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clothesPrice': clothesPrice,
      'bedSheetPrice': bedSheetPrice,
      'laundryShopName': laundryShopName,
      'overdueHours': overdueHours,
      'receiptFootnote': receiptFootnote,
      'minBedSheetPrice': minBedSheetPrice,
      'minClothesPrice': minClothesPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class SettingsRecordDocumentEquality implements Equality<SettingsRecord> {
  const SettingsRecordDocumentEquality();

  @override
  bool equals(SettingsRecord? e1, SettingsRecord? e2) {
    return e1?.clothesPrice == e2?.clothesPrice &&
        e1?.bedSheetPrice == e2?.bedSheetPrice &&
        e1?.laundryShopName == e2?.laundryShopName &&
        e1?.overdueHours == e2?.overdueHours &&
        e1?.receiptFootnote == e2?.receiptFootnote &&
        e1?.minBedSheetPrice == e2?.minBedSheetPrice &&
        e1?.minClothesPrice == e2?.minClothesPrice;
  }

  @override
  int hash(SettingsRecord? e) => const ListEquality().hash([
        e?.clothesPrice,
        e?.bedSheetPrice,
        e?.laundryShopName,
        e?.overdueHours,
        e?.receiptFootnote,
        e?.minBedSheetPrice,
        e?.minClothesPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is SettingsRecord;
}
