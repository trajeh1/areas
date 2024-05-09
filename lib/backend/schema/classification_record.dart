import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ClassificationRecord extends FirestoreRecord {
  ClassificationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('classification')
          : FirebaseFirestore.instance.collectionGroup('classification');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('classification').doc(id);

  static Stream<ClassificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassificationRecord.fromSnapshot(s));

  static Future<ClassificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassificationRecord.fromSnapshot(s));

  static ClassificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassificationRecordData({
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassificationRecordDocumentEquality
    implements Equality<ClassificationRecord> {
  const ClassificationRecordDocumentEquality();

  @override
  bool equals(ClassificationRecord? e1, ClassificationRecord? e2) {
    return e1?.type == e2?.type;
  }

  @override
  int hash(ClassificationRecord? e) => const ListEquality().hash([e?.type]);

  @override
  bool isValidKey(Object? o) => o is ClassificationRecord;
}
