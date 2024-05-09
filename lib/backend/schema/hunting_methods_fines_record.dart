import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HuntingMethodsFinesRecord extends FirestoreRecord {
  HuntingMethodsFinesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id2" field.
  String? _id2;
  String get id2 => _id2 ?? '';
  bool hasId2() => _id2 != null;

  // "huntingMethods" field.
  String? _huntingMethods;
  String get huntingMethods => _huntingMethods ?? '';
  bool hasHuntingMethods() => _huntingMethods != null;

  // "fine" field.
  double? _fine;
  double get fine => _fine ?? 0.0;
  bool hasFine() => _fine != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  void _initializeFields() {
    _id2 = snapshotData['id2'] as String?;
    _huntingMethods = snapshotData['huntingMethods'] as String?;
    _fine = castToType<double>(snapshotData['fine']);
    _type = snapshotData['type'] as String?;
    _comments = snapshotData['comments'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('huntingMethodsFines');

  static Stream<HuntingMethodsFinesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HuntingMethodsFinesRecord.fromSnapshot(s));

  static Future<HuntingMethodsFinesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HuntingMethodsFinesRecord.fromSnapshot(s));

  static HuntingMethodsFinesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HuntingMethodsFinesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HuntingMethodsFinesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HuntingMethodsFinesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HuntingMethodsFinesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HuntingMethodsFinesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHuntingMethodsFinesRecordData({
  String? id2,
  String? huntingMethods,
  double? fine,
  String? type,
  String? comments,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id2': id2,
      'huntingMethods': huntingMethods,
      'fine': fine,
      'type': type,
      'comments': comments,
    }.withoutNulls,
  );

  return firestoreData;
}

class HuntingMethodsFinesRecordDocumentEquality
    implements Equality<HuntingMethodsFinesRecord> {
  const HuntingMethodsFinesRecordDocumentEquality();

  @override
  bool equals(HuntingMethodsFinesRecord? e1, HuntingMethodsFinesRecord? e2) {
    return e1?.id2 == e2?.id2 &&
        e1?.huntingMethods == e2?.huntingMethods &&
        e1?.fine == e2?.fine &&
        e1?.type == e2?.type &&
        e1?.comments == e2?.comments;
  }

  @override
  int hash(HuntingMethodsFinesRecord? e) => const ListEquality()
      .hash([e?.id2, e?.huntingMethods, e?.fine, e?.type, e?.comments]);

  @override
  bool isValidKey(Object? o) => o is HuntingMethodsFinesRecord;
}
