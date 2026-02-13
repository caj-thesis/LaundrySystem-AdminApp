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

  void _initializeFields() {
    _clothesPrice = castToType<double>(snapshotData['clothesPrice']);
    _bedSheetPrice = castToType<double>(snapshotData['bedSheetPrice']);
    _laundryShopName = snapshotData['laundryShopName'] as String?;
    _overdueHours = castToType<int>(snapshotData['overdueHours']);
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clothesPrice': clothesPrice,
      'bedSheetPrice': bedSheetPrice,
      'laundryShopName': laundryShopName,
      'overdueHours': overdueHours,
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
        e1?.overdueHours == e2?.overdueHours;
  }

  @override
  int hash(SettingsRecord? e) => const ListEquality().hash(
      [e?.clothesPrice, e?.bedSheetPrice, e?.laundryShopName, e?.overdueHours]);

  @override
  bool isValidKey(Object? o) => o is SettingsRecord;
}
