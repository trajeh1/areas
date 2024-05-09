import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnimalsRecord extends FirestoreRecord {
  AnimalsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "arabicName" field.
  String? _arabicName;
  String get arabicName => _arabicName ?? '';
  bool hasArabicName() => _arabicName != null;

  // "scientificName" field.
  String? _scientificName;
  String get scientificName => _scientificName ?? '';
  bool hasScientificName() => _scientificName != null;

  // "minimumFine" field.
  double? _minimumFine;
  double get minimumFine => _minimumFine ?? 0.0;
  bool hasMinimumFine() => _minimumFine != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "maximumFine" field.
  double? _maximumFine;
  double get maximumFine => _maximumFine ?? 0.0;
  bool hasMaximumFine() => _maximumFine != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "picture" field.
  String? _picture;
  String get picture => _picture ?? '';
  bool hasPicture() => _picture != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "place" field.
  String? _place;
  String get place => _place ?? '';
  bool hasPlace() => _place != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _arabicName = snapshotData['arabicName'] as String?;
    _scientificName = snapshotData['scientificName'] as String?;
    _minimumFine = castToType<double>(snapshotData['minimumFine']);
    _category = snapshotData['category'] as String?;
    _maximumFine = castToType<double>(snapshotData['maximumFine']);
    _type = snapshotData['type'] as String?;
    _picture = snapshotData['picture'] as String?;
    _description = snapshotData['description'] as String?;
    _place = snapshotData['place'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Animals');

  static Stream<AnimalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnimalsRecord.fromSnapshot(s));

  static Future<AnimalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnimalsRecord.fromSnapshot(s));

  static AnimalsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnimalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnimalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnimalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnimalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnimalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnimalsRecordData({
  String? id,
  String? arabicName,
  String? scientificName,
  double? minimumFine,
  String? category,
  double? maximumFine,
  String? type,
  String? picture,
  String? description,
  String? place,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'arabicName': arabicName,
      'scientificName': scientificName,
      'minimumFine': minimumFine,
      'category': category,
      'maximumFine': maximumFine,
      'type': type,
      'picture': picture,
      'description': description,
      'place': place,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnimalsRecordDocumentEquality implements Equality<AnimalsRecord> {
  const AnimalsRecordDocumentEquality();

  @override
  bool equals(AnimalsRecord? e1, AnimalsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.arabicName == e2?.arabicName &&
        e1?.scientificName == e2?.scientificName &&
        e1?.minimumFine == e2?.minimumFine &&
        e1?.category == e2?.category &&
        e1?.maximumFine == e2?.maximumFine &&
        e1?.type == e2?.type &&
        e1?.picture == e2?.picture &&
        e1?.description == e2?.description &&
        e1?.place == e2?.place;
  }

  @override
  int hash(AnimalsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.arabicName,
        e?.scientificName,
        e?.minimumFine,
        e?.category,
        e?.maximumFine,
        e?.type,
        e?.picture,
        e?.description,
        e?.place
      ]);

  @override
  bool isValidKey(Object? o) => o is AnimalsRecord;
}
