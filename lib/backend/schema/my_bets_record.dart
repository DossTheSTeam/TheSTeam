import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyBetsRecord extends FirestoreRecord {
  MyBetsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mise" field.
  double? _mise;
  double get mise => _mise ?? 0.0;
  bool hasMise() => _mise != null;

  // "potentialy" field.
  double? _potentialy;
  double get potentialy => _potentialy ?? 0.0;
  bool hasPotentialy() => _potentialy != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "update_time" field.
  DateTime? _updateTime;
  DateTime? get updateTime => _updateTime;
  bool hasUpdateTime() => _updateTime != null;

  // "total_odds" field.
  double? _totalOdds;
  double get totalOdds => _totalOdds ?? 0.0;
  bool hasTotalOdds() => _totalOdds != null;

  // "statut" field.
  bool? _statut;
  bool get statut => _statut ?? false;
  bool hasStatut() => _statut != null;

  // "bet1" field.
  DocumentReference? _bet1;
  DocumentReference? get bet1 => _bet1;
  bool hasBet1() => _bet1 != null;

  // "bet2" field.
  DocumentReference? _bet2;
  DocumentReference? get bet2 => _bet2;
  bool hasBet2() => _bet2 != null;

  // "bet3" field.
  DocumentReference? _bet3;
  DocumentReference? get bet3 => _bet3;
  bool hasBet3() => _bet3 != null;

  // "user_seen" field.
  List<DocumentReference>? _userSeen;
  List<DocumentReference> get userSeen => _userSeen ?? const [];
  bool hasUserSeen() => _userSeen != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _mise = castToType<double>(snapshotData['mise']);
    _potentialy = castToType<double>(snapshotData['potentialy']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _updateTime = snapshotData['update_time'] as DateTime?;
    _totalOdds = castToType<double>(snapshotData['total_odds']);
    _statut = snapshotData['statut'] as bool?;
    _bet1 = snapshotData['bet1'] as DocumentReference?;
    _bet2 = snapshotData['bet2'] as DocumentReference?;
    _bet3 = snapshotData['bet3'] as DocumentReference?;
    _userSeen = getDataList(snapshotData['user_seen']);
    _seen = snapshotData['seen'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('my_bets')
          : FirebaseFirestore.instance.collectionGroup('my_bets');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('my_bets').doc(id);

  static Stream<MyBetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyBetsRecord.fromSnapshot(s));

  static Future<MyBetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyBetsRecord.fromSnapshot(s));

  static MyBetsRecord fromSnapshot(DocumentSnapshot snapshot) => MyBetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyBetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyBetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyBetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyBetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyBetsRecordData({
  double? mise,
  double? potentialy,
  DateTime? createdTime,
  DateTime? updateTime,
  double? totalOdds,
  bool? statut,
  DocumentReference? bet1,
  DocumentReference? bet2,
  DocumentReference? bet3,
  bool? seen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mise': mise,
      'potentialy': potentialy,
      'created_time': createdTime,
      'update_time': updateTime,
      'total_odds': totalOdds,
      'statut': statut,
      'bet1': bet1,
      'bet2': bet2,
      'bet3': bet3,
      'seen': seen,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyBetsRecordDocumentEquality implements Equality<MyBetsRecord> {
  const MyBetsRecordDocumentEquality();

  @override
  bool equals(MyBetsRecord? e1, MyBetsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.mise == e2?.mise &&
        e1?.potentialy == e2?.potentialy &&
        e1?.createdTime == e2?.createdTime &&
        e1?.updateTime == e2?.updateTime &&
        e1?.totalOdds == e2?.totalOdds &&
        e1?.statut == e2?.statut &&
        e1?.bet1 == e2?.bet1 &&
        e1?.bet2 == e2?.bet2 &&
        e1?.bet3 == e2?.bet3 &&
        listEquality.equals(e1?.userSeen, e2?.userSeen) &&
        e1?.seen == e2?.seen;
  }

  @override
  int hash(MyBetsRecord? e) => const ListEquality().hash([
        e?.mise,
        e?.potentialy,
        e?.createdTime,
        e?.updateTime,
        e?.totalOdds,
        e?.statut,
        e?.bet1,
        e?.bet2,
        e?.bet3,
        e?.userSeen,
        e?.seen
      ]);

  @override
  bool isValidKey(Object? o) => o is MyBetsRecord;
}
