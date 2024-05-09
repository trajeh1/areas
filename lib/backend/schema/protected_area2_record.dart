import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProtectedArea2Record extends FirestoreRecord {
  ProtectedArea2Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "Protected_area" field.
  String? _protectedArea;
  String get protectedArea => _protectedArea ?? '';
  bool hasProtectedArea() => _protectedArea != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "place_Nature" field.
  String? _placeNature;
  String get placeNature => _placeNature ?? '';
  bool hasPlaceNature() => _placeNature != null;

  // "picture" field.
  String? _picture;
  String get picture => _picture ?? '';
  bool hasPicture() => _picture != null;

  // "Accommodation" field.
  bool? _accommodation;
  bool get accommodation => _accommodation ?? false;
  bool hasAccommodation() => _accommodation != null;

  // "Bathrooms" field.
  bool? _bathrooms;
  bool get bathrooms => _bathrooms ?? false;
  bool hasBathrooms() => _bathrooms != null;

  // "Camps" field.
  bool? _camps;
  bool get camps => _camps ?? false;
  bool hasCamps() => _camps != null;

  // "Neareststation" field.
  String? _neareststation;
  String get neareststation => _neareststation ?? '';
  bool hasNeareststation() => _neareststation != null;

  // "Nearestambulance" field.
  String? _nearestambulance;
  String get nearestambulance => _nearestambulance ?? '';
  bool hasNearestambulance() => _nearestambulance != null;

  // "BBQplace" field.
  bool? _bBQplace;
  bool get bBQplace => _bBQplace ?? false;
  bool hasBBQplace() => _bBQplace != null;

  // "Mountainclimbing" field.
  bool? _mountainclimbing;
  bool get mountainclimbing => _mountainclimbing ?? false;
  bool hasMountainclimbing() => _mountainclimbing != null;

  // "description2" field.
  String? _description2;
  String get description2 => _description2 ?? '';
  bool hasDescription2() => _description2 != null;

  // "Pavedroad" field.
  bool? _pavedroad;
  bool get pavedroad => _pavedroad ?? false;
  bool hasPavedroad() => _pavedroad != null;

  // "Mobilenetwork" field.
  bool? _mobilenetwork;
  bool get mobilenetwork => _mobilenetwork ?? false;
  bool hasMobilenetwork() => _mobilenetwork != null;

  // "Swimming" field.
  bool? _swimming;
  bool get swimming => _swimming ?? false;
  bool hasSwimming() => _swimming != null;

  // "Diving" field.
  bool? _diving;
  bool get diving => _diving ?? false;
  bool hasDiving() => _diving != null;

  // "Parking" field.
  bool? _parking;
  bool get parking => _parking ?? false;
  bool hasParking() => _parking != null;

  // "Policestation" field.
  String? _policestation;
  String get policestation => _policestation ?? '';
  bool hasPolicestation() => _policestation != null;

  // "Hunting" field.
  bool? _hunting;
  bool get hunting => _hunting ?? false;
  bool hasHunting() => _hunting != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _protectedArea = snapshotData['Protected_area'] as String?;
    _year = castToType<int>(snapshotData['year']);
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
    _description = snapshotData['description'] as String?;
    _placeNature = snapshotData['place_Nature'] as String?;
    _picture = snapshotData['picture'] as String?;
    _accommodation = snapshotData['Accommodation'] as bool?;
    _bathrooms = snapshotData['Bathrooms'] as bool?;
    _camps = snapshotData['Camps'] as bool?;
    _neareststation = snapshotData['Neareststation'] as String?;
    _nearestambulance = snapshotData['Nearestambulance'] as String?;
    _bBQplace = snapshotData['BBQplace'] as bool?;
    _mountainclimbing = snapshotData['Mountainclimbing'] as bool?;
    _description2 = snapshotData['description2'] as String?;
    _pavedroad = snapshotData['Pavedroad'] as bool?;
    _mobilenetwork = snapshotData['Mobilenetwork'] as bool?;
    _swimming = snapshotData['Swimming'] as bool?;
    _diving = snapshotData['Diving'] as bool?;
    _parking = snapshotData['Parking'] as bool?;
    _policestation = snapshotData['Policestation'] as String?;
    _hunting = snapshotData['Hunting'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProtectedArea2');

  static Stream<ProtectedArea2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProtectedArea2Record.fromSnapshot(s));

  static Future<ProtectedArea2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProtectedArea2Record.fromSnapshot(s));

  static ProtectedArea2Record fromSnapshot(DocumentSnapshot snapshot) =>
      ProtectedArea2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProtectedArea2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProtectedArea2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProtectedArea2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProtectedArea2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProtectedArea2RecordData({
  int? id,
  String? protectedArea,
  int? year,
  String? naturePreserve,
  double? areaKm2,
  String? internationalClassification,
  String? classificationType,
  String? responsibleParty,
  String? region,
  String? city,
  LatLng? coordinates,
  String? condition,
  String? description,
  String? placeNature,
  String? picture,
  bool? accommodation,
  bool? bathrooms,
  bool? camps,
  String? neareststation,
  String? nearestambulance,
  bool? bBQplace,
  bool? mountainclimbing,
  String? description2,
  bool? pavedroad,
  bool? mobilenetwork,
  bool? swimming,
  bool? diving,
  bool? parking,
  String? policestation,
  bool? hunting,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'Protected_area': protectedArea,
      'year': year,
      'Nature_preserve': naturePreserve,
      'Area_km2': areaKm2,
      'International_classification': internationalClassification,
      'Classification_type': classificationType,
      'Responsible_party': responsibleParty,
      'Region': region,
      'City': city,
      'Coordinates': coordinates,
      'condition': condition,
      'description': description,
      'place_Nature': placeNature,
      'picture': picture,
      'Accommodation': accommodation,
      'Bathrooms': bathrooms,
      'Camps': camps,
      'Neareststation': neareststation,
      'Nearestambulance': nearestambulance,
      'BBQplace': bBQplace,
      'Mountainclimbing': mountainclimbing,
      'description2': description2,
      'Pavedroad': pavedroad,
      'Mobilenetwork': mobilenetwork,
      'Swimming': swimming,
      'Diving': diving,
      'Parking': parking,
      'Policestation': policestation,
      'Hunting': hunting,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProtectedArea2RecordDocumentEquality
    implements Equality<ProtectedArea2Record> {
  const ProtectedArea2RecordDocumentEquality();

  @override
  bool equals(ProtectedArea2Record? e1, ProtectedArea2Record? e2) {
    return e1?.id == e2?.id &&
        e1?.protectedArea == e2?.protectedArea &&
        e1?.year == e2?.year &&
        e1?.naturePreserve == e2?.naturePreserve &&
        e1?.areaKm2 == e2?.areaKm2 &&
        e1?.internationalClassification == e2?.internationalClassification &&
        e1?.classificationType == e2?.classificationType &&
        e1?.responsibleParty == e2?.responsibleParty &&
        e1?.region == e2?.region &&
        e1?.city == e2?.city &&
        e1?.coordinates == e2?.coordinates &&
        e1?.condition == e2?.condition &&
        e1?.description == e2?.description &&
        e1?.placeNature == e2?.placeNature &&
        e1?.picture == e2?.picture &&
        e1?.accommodation == e2?.accommodation &&
        e1?.bathrooms == e2?.bathrooms &&
        e1?.camps == e2?.camps &&
        e1?.neareststation == e2?.neareststation &&
        e1?.nearestambulance == e2?.nearestambulance &&
        e1?.bBQplace == e2?.bBQplace &&
        e1?.mountainclimbing == e2?.mountainclimbing &&
        e1?.description2 == e2?.description2 &&
        e1?.pavedroad == e2?.pavedroad &&
        e1?.mobilenetwork == e2?.mobilenetwork &&
        e1?.swimming == e2?.swimming &&
        e1?.diving == e2?.diving &&
        e1?.parking == e2?.parking &&
        e1?.policestation == e2?.policestation &&
        e1?.hunting == e2?.hunting;
  }

  @override
  int hash(ProtectedArea2Record? e) => const ListEquality().hash([
        e?.id,
        e?.protectedArea,
        e?.year,
        e?.naturePreserve,
        e?.areaKm2,
        e?.internationalClassification,
        e?.classificationType,
        e?.responsibleParty,
        e?.region,
        e?.city,
        e?.coordinates,
        e?.condition,
        e?.description,
        e?.placeNature,
        e?.picture,
        e?.accommodation,
        e?.bathrooms,
        e?.camps,
        e?.neareststation,
        e?.nearestambulance,
        e?.bBQplace,
        e?.mountainclimbing,
        e?.description2,
        e?.pavedroad,
        e?.mobilenetwork,
        e?.swimming,
        e?.diving,
        e?.parking,
        e?.policestation,
        e?.hunting
      ]);

  @override
  bool isValidKey(Object? o) => o is ProtectedArea2Record;
}
