import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OverdueLogsRecord extends FirestoreRecord {
  OverdueLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "lockerId" field.
  int? _lockerId;
  int get lockerId => _lockerId ?? 0;
  bool hasLockerId() => _lockerId != null;

  // "pickedUpAt" field.
  DateTime? _pickedUpAt;
  DateTime? get pickedUpAt => _pickedUpAt;
  bool hasPickedUpAt() => _pickedUpAt != null;

  // "pin" field.
  String? _pin;
  String get pin => _pin ?? '';
  bool hasPin() => _pin != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "transactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  bool hasTransactionId() => _transactionId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "laundryStatus" field.
  String? _laundryStatus;
  String get laundryStatus => _laundryStatus ?? '';
  bool hasLaundryStatus() => _laundryStatus != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "archivedAt" field.
  DateTime? _archivedAt;
  DateTime? get archivedAt => _archivedAt;
  bool hasArchivedAt() => _archivedAt != null;

  void _initializeFields() {
    _lockerId = castToType<int>(snapshotData['lockerId']);
    _pickedUpAt = snapshotData['pickedUpAt'] as DateTime?;
    _pin = snapshotData['pin'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _status = snapshotData['status'] as String?;
    _transactionId = snapshotData['transactionId'] as String?;
    _type = snapshotData['type'] as String?;
    _weight = castToType<double>(snapshotData['weight']);
    _laundryStatus = snapshotData['laundryStatus'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _archivedAt = snapshotData['archivedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('overdue_logs');

  static Stream<OverdueLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OverdueLogsRecord.fromSnapshot(s));

  static Future<OverdueLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OverdueLogsRecord.fromSnapshot(s));

  static OverdueLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OverdueLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OverdueLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OverdueLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OverdueLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OverdueLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOverdueLogsRecordData({
  int? lockerId,
  DateTime? pickedUpAt,
  String? pin,
  double? price,
  String? status,
  String? transactionId,
  String? type,
  double? weight,
  String? laundryStatus,
  String? phoneNumber,
  DateTime? archivedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lockerId': lockerId,
      'pickedUpAt': pickedUpAt,
      'pin': pin,
      'price': price,
      'status': status,
      'transactionId': transactionId,
      'type': type,
      'weight': weight,
      'laundryStatus': laundryStatus,
      'phoneNumber': phoneNumber,
      'archivedAt': archivedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class OverdueLogsRecordDocumentEquality implements Equality<OverdueLogsRecord> {
  const OverdueLogsRecordDocumentEquality();

  @override
  bool equals(OverdueLogsRecord? e1, OverdueLogsRecord? e2) {
    return e1?.lockerId == e2?.lockerId &&
        e1?.pickedUpAt == e2?.pickedUpAt &&
        e1?.pin == e2?.pin &&
        e1?.price == e2?.price &&
        e1?.status == e2?.status &&
        e1?.transactionId == e2?.transactionId &&
        e1?.type == e2?.type &&
        e1?.weight == e2?.weight &&
        e1?.laundryStatus == e2?.laundryStatus &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.archivedAt == e2?.archivedAt;
  }

  @override
  int hash(OverdueLogsRecord? e) => const ListEquality().hash([
        e?.lockerId,
        e?.pickedUpAt,
        e?.pin,
        e?.price,
        e?.status,
        e?.transactionId,
        e?.type,
        e?.weight,
        e?.laundryStatus,
        e?.phoneNumber,
        e?.archivedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is OverdueLogsRecord;
}
