import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProtectedAreaRecord extends FirestoreRecord {
  ProtectedAreaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "classification" field.
  DocumentReference? _classification;
  DocumentReference? get classification => _classification;
  bool hasClassification() => _classification != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "picture" field.
  String? _picture;
  String get picture => _picture ?? '';
  bool hasPicture() => _picture != null;

  // "Protected_area" field.
  String? _protectedArea;
  String get protectedArea => _protectedArea ?? '';
  bool hasProtectedArea() => _protectedArea != null;

  // "Nature_preserve" field.
  String? _naturePreserve;
  String get naturePreserve => _naturePreserve ?? '';
  bool hasNaturePreserve() => _naturePreserve != null;

  // "Area_km2" field.
  double? _areaKm2;
  double get areaKm2 => _areaKm2 ?? 0.0;
  bool hasAreaKm2() => _areaKm2 != null;

  // "International_classification" field.
  String? _internationalClassification;
  String get internationalClassification => _internationalClassification ?? '';
  bool hasInternationalClassification() => _internationalClassification != null;

  // "Classification_type" field.
  String? _classificationType;
  String get classificationType => _classificationType ?? '';
  bool hasClassificationType() => _classificationType != null;

  // "Responsible_party" field.
  String? _responsibleParty;
  String get responsibleParty => _responsibleParty ?? '';
  bool hasResponsibleParty() => _responsibleParty != null;

  // "Region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "Coordinates" field.
  LatLng? _coordinates;
  LatLng? get coordinates => _coordinates;
  bool hasCoordinates() => _coordinates != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "place_Nature" field.
  String? _placeNature;
  String get placeNature => _placeNature ?? '';
  bool hasPlaceNature() => _placeNature != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _year = castToType<int>(snapshotData['year']);
    _classification = snapshotData['classification'] as DocumentReference?;
    _description = snapshotData['description'] as String?;
    _picture = snapshotData['picture'] as String?;
    _protectedArea = snapshotData['Protected_area'] as String?;
    _naturePreserve = snapshotData['Nature_preserve'] as String?;
    _areaKm2 = castToType<double>(snapshotData['Area_km2']);
    _internationalClassification =
        snapshotData['International_classification'] as String?;
    _classificationType = snapshotData['Classification_type'] as String?;
    _responsibleParty = snapshotData['Responsible_party'] as String?;
    _region = snapshotData['Region'] as String?;
    _city = snapshotData['City'] as String?;
    _coordinates = snapshotData['Coordinates'] as LatLng?;
    _condition = snapshotData['condition'] as String?;
    _placeNature = snapshotData['place_Nature'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProtectedArea');

  static Stream<ProtectedAreaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProtectedAreaRecord.fromSnapshot(s));

  static Future<ProtectedAreaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProtectedAreaRecord.fromSnapshot(s));

  static ProtectedAreaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProtectedAreaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProtectedAreaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProtectedAreaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProtectedAreaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProtectedAreaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProtectedAreaRecordData({
  String? id,
  String? name,
  int? year,
  DocumentReference? classification,
  String? description,
  String? picture,
  String? protectedArea,
  String? naturePreserve,
  double? areaKm2,
  String? internationalClassification,
  String? classificationType,
  String? responsibleParty,
  String? region,
  String? city,
  LatLng? coordinates,
  String? condition,
  String? placeNature,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'year': year,
      'classification': classification,
      'description': description,
      'picture': picture,
      'Protected_area': protectedArea,
      'Nature_preserve': naturePreserve,
      'Area_km2': areaKm2,
      'International_classification': internationalClassification,
      'Classification_type': classificationType,
      'Responsible_party': responsibleParty,
      'Region': region,
      'City': city,
      'Coordinates': coordinates,
      'condition': condition,
      'place_Nature': placeNature,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProtectedAreaRecordDocumentEquality
    implements Equality<ProtectedAreaRecord> {
  const ProtectedAreaRecordDocumentEquality();

  @override
  bool equals(ProtectedAreaRecord? e1, ProtectedAreaRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.year == e2?.year &&
        e1?.classification == e2?.classification &&
        e1?.description == e2?.description &&
        e1?.picture == e2?.picture &&
        e1?.protectedArea == e2?.protectedArea &&
        e1?.naturePreserve == e2?.naturePreserve &&
        e1?.areaKm2 == e2?.areaKm2 &&
        e1?.internationalClassification == e2?.internationalClassification &&
        e1?.classificationType == e2?.classificationType &&
        e1?.responsibleParty == e2?.responsibleParty &&
        e1?.region == e2?.region &&
        e1?.city == e2?.city &&
        e1?.coordinates == e2?.coordinates &&
        e1?.condition == e2?.condition &&
        e1?.placeNature == e2?.placeNature;
  }

  @override
  int hash(ProtectedAreaRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.year,
        e?.classification,
        e?.description,
        e?.picture,
        e?.protectedArea,
        e?.naturePreserve,
        e?.areaKm2,
        e?.internationalClassification,
        e?.classificationType,
        e?.responsibleParty,
        e?.region,
        e?.city,
        e?.coordinates,
        e?.condition,
        e?.placeNature
      ]);

  @override
  bool isValidKey(Object? o) => o is ProtectedAreaRecord;
}
