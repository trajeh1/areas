import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ViolationRecord extends FirestoreRecord {
  ViolationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "maxViolation" field.
  double? _maxViolation;
  double get maxViolation => _maxViolation ?? 0.0;
  bool hasMaxViolation() => _maxViolation != null;

  // "MinViolation" field.
  double? _minViolation;
  double get minViolation => _minViolation ?? 0.0;
  bool hasMinViolation() => _minViolation != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  // "comments2" field.
  String? _comments2;
  String get comments2 => _comments2 ?? '';
  bool hasComments2() => _comments2 != null;

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "Violation" field.
  String? _violation;
  String get violation => _violation ?? '';
  bool hasViolation() => _violation != null;

  void _initializeFields() {
    _maxViolation = castToType<double>(snapshotData['maxViolation']);
    _minViolation = castToType<double>(snapshotData['MinViolation']);
    _comments = snapshotData['comments'] as String?;
    _comments2 = snapshotData['comments2'] as String?;
    _category = snapshotData['Category'] as String?;
    _id = castToType<int>(snapshotData['id']);
    _violation = snapshotData['Violation'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('violation');

  static Stream<ViolationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ViolationRecord.fromSnapshot(s));

  static Future<ViolationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ViolationRecord.fromSnapshot(s));

  static ViolationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ViolationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ViolationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ViolationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ViolationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ViolationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createViolationRecordData({
  double? maxViolation,
  double? minViolation,
  String? comments,
  String? comments2,
  String? category,
  int? id,
  String? violation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'maxViolation': maxViolation,
      'MinViolation': minViolation,
      'comments': comments,
      'comments2': comments2,
      'Category': category,
      'id': id,
      'Violation': violation,
    }.withoutNulls,
  );

  return firestoreData;
}

class ViolationRecordDocumentEquality implements Equality<ViolationRecord> {
  const ViolationRecordDocumentEquality();

  @override
  bool equals(ViolationRecord? e1, ViolationRecord? e2) {
    return e1?.maxViolation == e2?.maxViolation &&
        e1?.minViolation == e2?.minViolation &&
        e1?.comments == e2?.comments &&
        e1?.comments2 == e2?.comments2 &&
        e1?.category == e2?.category &&
        e1?.id == e2?.id &&
        e1?.violation == e2?.violation;
  }

  @override
  int hash(ViolationRecord? e) => const ListEquality().hash([
        e?.maxViolation,
        e?.minViolation,
        e?.comments,
        e?.comments2,
        e?.category,
        e?.id,
        e?.violation
      ]);

  @override
  bool isValidKey(Object? o) => o is ViolationRecord;
}
