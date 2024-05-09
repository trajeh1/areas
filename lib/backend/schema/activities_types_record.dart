import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ActivitiesTypesRecord extends FirestoreRecord {
  ActivitiesTypesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id2" field.
  String? _id2;
  String get id2 => _id2 ?? '';
  bool hasId2() => _id2 != null;

  // "activity" field.
  String? _activity;
  String get activity => _activity ?? '';
  bool hasActivity() => _activity != null;

  // "commrnts" field.
  String? _commrnts;
  String get commrnts => _commrnts ?? '';
  bool hasCommrnts() => _commrnts != null;

  void _initializeFields() {
    _id2 = snapshotData['id2'] as String?;
    _activity = snapshotData['activity'] as String?;
    _commrnts = snapshotData['commrnts'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activitiesTypes');

  static Stream<ActivitiesTypesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivitiesTypesRecord.fromSnapshot(s));

  static Future<ActivitiesTypesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivitiesTypesRecord.fromSnapshot(s));

  static ActivitiesTypesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivitiesTypesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivitiesTypesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivitiesTypesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivitiesTypesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivitiesTypesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivitiesTypesRecordData({
  String? id2,
  String? activity,
  String? commrnts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id2': id2,
      'activity': activity,
      'commrnts': commrnts,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivitiesTypesRecordDocumentEquality
    implements Equality<ActivitiesTypesRecord> {
  const ActivitiesTypesRecordDocumentEquality();

  @override
  bool equals(ActivitiesTypesRecord? e1, ActivitiesTypesRecord? e2) {
    return e1?.id2 == e2?.id2 &&
        e1?.activity == e2?.activity &&
        e1?.commrnts == e2?.commrnts;
  }

  @override
  int hash(ActivitiesTypesRecord? e) =>
      const ListEquality().hash([e?.id2, e?.activity, e?.commrnts]);

  @override
  bool isValidKey(Object? o) => o is ActivitiesTypesRecord;
}
