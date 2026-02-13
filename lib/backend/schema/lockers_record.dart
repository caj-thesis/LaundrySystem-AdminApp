import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LockersRecord extends FirestoreRecord {
  LockersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "action" field.
  String? _action;
  String get action => _action ?? '';
  bool hasAction() => _action != null;

  // "currentTransactionId" field.
  String? _currentTransactionId;
  String get currentTransactionId => _currentTransactionId ?? '';
  bool hasCurrentTransactionId() => _currentTransactionId != null;

  // "doorStatus" field.
  String? _doorStatus;
  String get doorStatus => _doorStatus ?? '';
  bool hasDoorStatus() => _doorStatus != null;

  // "isConnected" field.
  bool? _isConnected;
  bool get isConnected => _isConnected ?? false;
  bool hasIsConnected() => _isConnected != null;

  // "lockerId" field.
  int? _lockerId;
  int get lockerId => _lockerId ?? 0;
  bool hasLockerId() => _lockerId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "adminCommand" field.
  String? _adminCommand;
  String get adminCommand => _adminCommand ?? '';
  bool hasAdminCommand() => _adminCommand != null;

  void _initializeFields() {
    _action = snapshotData['action'] as String?;
    _currentTransactionId = snapshotData['currentTransactionId'] as String?;
    _doorStatus = snapshotData['doorStatus'] as String?;
    _isConnected = snapshotData['isConnected'] as bool?;
    _lockerId = castToType<int>(snapshotData['lockerId']);
    _status = snapshotData['status'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _adminCommand = snapshotData['adminCommand'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lockers');

  static Stream<LockersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LockersRecord.fromSnapshot(s));

  static Future<LockersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LockersRecord.fromSnapshot(s));

  static LockersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LockersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LockersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LockersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LockersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LockersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLockersRecordData({
  String? action,
  String? currentTransactionId,
  String? doorStatus,
  bool? isConnected,
  int? lockerId,
  String? status,
  DateTime? timestamp,
  String? adminCommand,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'action': action,
      'currentTransactionId': currentTransactionId,
      'doorStatus': doorStatus,
      'isConnected': isConnected,
      'lockerId': lockerId,
      'status': status,
      'timestamp': timestamp,
      'adminCommand': adminCommand,
    }.withoutNulls,
  );

  return firestoreData;
}

class LockersRecordDocumentEquality implements Equality<LockersRecord> {
  const LockersRecordDocumentEquality();

  @override
  bool equals(LockersRecord? e1, LockersRecord? e2) {
    return e1?.action == e2?.action &&
        e1?.currentTransactionId == e2?.currentTransactionId &&
        e1?.doorStatus == e2?.doorStatus &&
        e1?.isConnected == e2?.isConnected &&
        e1?.lockerId == e2?.lockerId &&
        e1?.status == e2?.status &&
        e1?.timestamp == e2?.timestamp &&
        e1?.adminCommand == e2?.adminCommand;
  }

  @override
  int hash(LockersRecord? e) => const ListEquality().hash([
        e?.action,
        e?.currentTransactionId,
        e?.doorStatus,
        e?.isConnected,
        e?.lockerId,
        e?.status,
        e?.timestamp,
        e?.adminCommand
      ]);

  @override
  bool isValidKey(Object? o) => o is LockersRecord;
}
