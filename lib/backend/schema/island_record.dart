import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class IslandRecord extends FirestoreRecord {
  IslandRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "population" field.
  String? _population;
  String get population => _population ?? '';
  bool hasPopulation() => _population != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "cd" field.
  String? _cd;
  String get cd => _cd ?? '';
  bool hasCd() => _cd != null;

  // "islandName" field.
  String? _islandName;
  String get islandName => _islandName ?? '';
  bool hasIslandName() => _islandName != null;

  // "distancefromthecoast" field.
  String? _distancefromthecoast;
  String get distancefromthecoast => _distancefromthecoast ?? '';
  bool hasDistancefromthecoast() => _distancefromthecoast != null;

  // "coordinates" field.
  LatLng? _coordinates;
  LatLng? get coordinates => _coordinates;
  bool hasCoordinates() => _coordinates != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "nearestCity" field.
  String? _nearestCity;
  String get nearestCity => _nearestCity ?? '';
  bool hasNearestCity() => _nearestCity != null;

  // "picture" field.
  String? _picture;
  String get picture => _picture ?? '';
  bool hasPicture() => _picture != null;

  void _initializeFields() {
    _area = snapshotData['area'] as String?;
    _population = snapshotData['population'] as String?;
    _region = snapshotData['region'] as String?;
    _comments = snapshotData['comments'] as String?;
    _id = snapshotData['id'] as String?;
    _cd = snapshotData['cd'] as String?;
    _islandName = snapshotData['islandName'] as String?;
    _distancefromthecoast = snapshotData['distancefromthecoast'] as String?;
    _coordinates = snapshotData['coordinates'] as LatLng?;
    _location = snapshotData['location'] as String?;
    _nearestCity = snapshotData['nearestCity'] as String?;
    _picture = snapshotData['picture'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Island');

  static Stream<IslandRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IslandRecord.fromSnapshot(s));

  static Future<IslandRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IslandRecord.fromSnapshot(s));

  static IslandRecord fromSnapshot(DocumentSnapshot snapshot) => IslandRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IslandRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IslandRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IslandRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IslandRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIslandRecordData({
  String? area,
  String? population,
  String? region,
  String? comments,
  String? id,
  String? cd,
  String? islandName,
  String? distancefromthecoast,
  LatLng? coordinates,
  String? location,
  String? nearestCity,
  String? picture,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'area': area,
      'population': population,
      'region': region,
      'comments': comments,
      'id': id,
      'cd': cd,
      'islandName': islandName,
      'distancefromthecoast': distancefromthecoast,
      'coordinates': coordinates,
      'location': location,
      'nearestCity': nearestCity,
      'picture': picture,
    }.withoutNulls,
  );

  return firestoreData;
}

class IslandRecordDocumentEquality implements Equality<IslandRecord> {
  const IslandRecordDocumentEquality();

  @override
  bool equals(IslandRecord? e1, IslandRecord? e2) {
    return e1?.area == e2?.area &&
        e1?.population == e2?.population &&
        e1?.region == e2?.region &&
        e1?.comments == e2?.comments &&
        e1?.id == e2?.id &&
        e1?.cd == e2?.cd &&
        e1?.islandName == e2?.islandName &&
        e1?.distancefromthecoast == e2?.distancefromthecoast &&
        e1?.coordinates == e2?.coordinates &&
        e1?.location == e2?.location &&
        e1?.nearestCity == e2?.nearestCity &&
        e1?.picture == e2?.picture;
  }

  @override
  int hash(IslandRecord? e) => const ListEquality().hash([
        e?.area,
        e?.population,
        e?.region,
        e?.comments,
        e?.id,
        e?.cd,
        e?.islandName,
        e?.distancefromthecoast,
        e?.coordinates,
        e?.location,
        e?.nearestCity,
        e?.picture
      ]);

  @override
  bool isValidKey(Object? o) => o is IslandRecord;
}
