import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ProhibitionsRecord extends FirestoreRecord {
  ProhibitionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id2" field.
  String? _id2;
  String get id2 => _id2 ?? '';
  bool hasId2() => _id2 != null;

  // "prohibitions" field.
  String? _prohibitions;
  String get prohibitions => _prohibitions ?? '';
  bool hasProhibitions() => _prohibitions != null;

  void _initializeFields() {
    _id2 = snapshotData['id2'] as String?;
    _prohibitions = snapshotData['prohibitions'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prohibitions');

  static Stream<ProhibitionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProhibitionsRecord.fromSnapshot(s));

  static Future<ProhibitionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProhibitionsRecord.fromSnapshot(s));

  static ProhibitionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProhibitionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProhibitionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProhibitionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProhibitionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProhibitionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProhibitionsRecordData({
  String? id2,
  String? prohibitions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id2': id2,
      'prohibitions': prohibitions,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProhibitionsRecordDocumentEquality
    implements Equality<ProhibitionsRecord> {
  const ProhibitionsRecordDocumentEquality();

  @override
  bool equals(ProhibitionsRecord? e1, ProhibitionsRecord? e2) {
    return e1?.id2 == e2?.id2 && e1?.prohibitions == e2?.prohibitions;
  }

  @override
  int hash(ProhibitionsRecord? e) =>
      const ListEquality().hash([e?.id2, e?.prohibitions]);

  @override
  bool isValidKey(Object? o) => o is ProhibitionsRecord;
}
