import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegulationsandregulationsRecord extends FirestoreRecord {
  RegulationsandregulationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id2" field.
  String? _id2;
  String get id2 => _id2 ?? '';
  bool hasId2() => _id2 != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "FileDescription" field.
  String? _fileDescription;
  String get fileDescription => _fileDescription ?? '';
  bool hasFileDescription() => _fileDescription != null;

  // "attached" field.
  String? _attached;
  String get attached => _attached ?? '';
  bool hasAttached() => _attached != null;

  void _initializeFields() {
    _id2 = snapshotData['id2'] as String?;
    _title = snapshotData['Title'] as String?;
    _fileDescription = snapshotData['FileDescription'] as String?;
    _attached = snapshotData['attached'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Regulationsandregulations');

  static Stream<RegulationsandregulationsRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => RegulationsandregulationsRecord.fromSnapshot(s));

  static Future<RegulationsandregulationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RegulationsandregulationsRecord.fromSnapshot(s));

  static RegulationsandregulationsRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      RegulationsandregulationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegulationsandregulationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegulationsandregulationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegulationsandregulationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegulationsandregulationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegulationsandregulationsRecordData({
  String? id2,
  String? title,
  String? fileDescription,
  String? attached,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id2': id2,
      'Title': title,
      'FileDescription': fileDescription,
      'attached': attached,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegulationsandregulationsRecordDocumentEquality
    implements Equality<RegulationsandregulationsRecord> {
  const RegulationsandregulationsRecordDocumentEquality();

  @override
  bool equals(RegulationsandregulationsRecord? e1,
      RegulationsandregulationsRecord? e2) {
    return e1?.id2 == e2?.id2 &&
        e1?.title == e2?.title &&
        e1?.fileDescription == e2?.fileDescription &&
        e1?.attached == e2?.attached;
  }

  @override
  int hash(RegulationsandregulationsRecord? e) => const ListEquality()
      .hash([e?.id2, e?.title, e?.fileDescription, e?.attached]);

  @override
  bool isValidKey(Object? o) => o is RegulationsandregulationsRecord;
}
