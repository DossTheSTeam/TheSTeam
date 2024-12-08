import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BetsRecord extends FirestoreRecord {
  BetsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "choice" field.
  String? _choice;
  String get choice => _choice ?? '';
  bool hasChoice() => _choice != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "bettors" field.
  List<DocumentReference>? _bettors;
  List<DocumentReference> get bettors => _bettors ?? const [];
  bool hasBettors() => _bettors != null;

  // "odd" field.
  double? _odd;
  double get odd => _odd ?? 0.0;
  bool hasOdd() => _odd != null;

  // "statut" field.
  bool? _statut;
  bool get statut => _statut ?? false;
  bool hasStatut() => _statut != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _choice = snapshotData['choice'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _bettors = getDataList(snapshotData['bettors']);
    _odd = castToType<double>(snapshotData['odd']);
    _statut = snapshotData['statut'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bets')
          : FirebaseFirestore.instance.collectionGroup('bets');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('bets').doc(id);

  static Stream<BetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BetsRecord.fromSnapshot(s));

  static Future<BetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BetsRecord.fromSnapshot(s));

  static BetsRecord fromSnapshot(DocumentSnapshot snapshot) => BetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBetsRecordData({
  String? choice,
  DateTime? createdTime,
  double? odd,
  bool? statut,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'choice': choice,
      'created_time': createdTime,
      'odd': odd,
      'statut': statut,
    }.withoutNulls,
  );

  return firestoreData;
}

class BetsRecordDocumentEquality implements Equality<BetsRecord> {
  const BetsRecordDocumentEquality();

  @override
  bool equals(BetsRecord? e1, BetsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.choice == e2?.choice &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.bettors, e2?.bettors) &&
        e1?.odd == e2?.odd &&
        e1?.statut == e2?.statut;
  }

  @override
  int hash(BetsRecord? e) => const ListEquality()
      .hash([e?.choice, e?.createdTime, e?.bettors, e?.odd, e?.statut]);

  @override
  bool isValidKey(Object? o) => o is BetsRecord;
}
