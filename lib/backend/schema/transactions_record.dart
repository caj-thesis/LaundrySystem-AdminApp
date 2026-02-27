import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
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

  // "triggerReminder" field.
  bool? _triggerReminder;
  bool get triggerReminder => _triggerReminder ?? false;
  bool hasTriggerReminder() => _triggerReminder != null;

  // "triggerPrint" field.
  bool? _triggerPrint;
  bool get triggerPrint => _triggerPrint ?? false;
  bool hasTriggerPrint() => _triggerPrint != null;

  // "reminderSent" field.
  bool? _reminderSent;
  bool get reminderSent => _reminderSent ?? false;
  bool hasReminderSent() => _reminderSent != null;

  // "reminderSentAt" field.
  DateTime? _reminderSentAt;
  DateTime? get reminderSentAt => _reminderSentAt;
  bool hasReminderSentAt() => _reminderSentAt != null;

  // "doneAt" field.
  DateTime? _doneAt;
  DateTime? get doneAt => _doneAt;
  bool hasDoneAt() => _doneAt != null;

  // "archivedAt" field.
  DateTime? _archivedAt;
  DateTime? get archivedAt => _archivedAt;
  bool hasArchivedAt() => _archivedAt != null;

  // "droppedAt" field.
  DateTime? _droppedAt;
  DateTime? get droppedAt => _droppedAt;
  bool hasDroppedAt() => _droppedAt != null;

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
    _triggerReminder = snapshotData['triggerReminder'] as bool?;
    _triggerPrint = snapshotData['triggerPrint'] as bool?;
    _reminderSent = snapshotData['reminderSent'] as bool?;
    _reminderSentAt = snapshotData['reminderSentAt'] as DateTime?;
    _doneAt = snapshotData['doneAt'] as DateTime?;
    _archivedAt = snapshotData['archivedAt'] as DateTime?;
    _droppedAt = snapshotData['droppedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
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
  bool? triggerReminder,
  bool? triggerPrint,
  bool? reminderSent,
  DateTime? reminderSentAt,
  DateTime? doneAt,
  DateTime? archivedAt,
  DateTime? droppedAt,
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
      'triggerReminder': triggerReminder,
      'triggerPrint': triggerPrint,
      'reminderSent': reminderSent,
      'reminderSentAt': reminderSentAt,
      'doneAt': doneAt,
      'archivedAt': archivedAt,
      'droppedAt': droppedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
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
        e1?.triggerReminder == e2?.triggerReminder &&
        e1?.triggerPrint == e2?.triggerPrint &&
        e1?.reminderSent == e2?.reminderSent &&
        e1?.reminderSentAt == e2?.reminderSentAt &&
        e1?.doneAt == e2?.doneAt &&
        e1?.archivedAt == e2?.archivedAt &&
        e1?.droppedAt == e2?.droppedAt;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
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
        e?.triggerReminder,
        e?.triggerPrint,
        e?.reminderSent,
        e?.reminderSentAt,
        e?.doneAt,
        e?.archivedAt,
        e?.droppedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
