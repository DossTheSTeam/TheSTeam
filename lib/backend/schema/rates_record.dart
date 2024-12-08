import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RatesRecord extends FirestoreRecord {
  RatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "tops" field.
  int? _tops;
  int get tops => _tops ?? 0;
  bool hasTops() => _tops != null;

  // "flops" field.
  int? _flops;
  int get flops => _flops ?? 0;
  bool hasFlops() => _flops != null;

  // "eteam" field.
  DocumentReference? _eteam;
  DocumentReference? get eteam => _eteam;
  bool hasEteam() => _eteam != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _tops = castToType<int>(snapshotData['tops']);
    _flops = castToType<int>(snapshotData['flops']);
    _eteam = snapshotData['eteam'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('rates')
          : FirebaseFirestore.instance.collectionGroup('rates');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('rates').doc(id);

  static Stream<RatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RatesRecord.fromSnapshot(s));

  static Future<RatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RatesRecord.fromSnapshot(s));

  static RatesRecord fromSnapshot(DocumentSnapshot snapshot) => RatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRatesRecordData({
  DocumentReference? user,
  int? tops,
  int? flops,
  DocumentReference? eteam,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'tops': tops,
      'flops': flops,
      'eteam': eteam,
    }.withoutNulls,
  );

  return firestoreData;
}

class RatesRecordDocumentEquality implements Equality<RatesRecord> {
  const RatesRecordDocumentEquality();

  @override
  bool equals(RatesRecord? e1, RatesRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.tops == e2?.tops &&
        e1?.flops == e2?.flops &&
        e1?.eteam == e2?.eteam;
  }

  @override
  int hash(RatesRecord? e) =>
      const ListEquality().hash([e?.user, e?.tops, e?.flops, e?.eteam]);

  @override
  bool isValidKey(Object? o) => o is RatesRecord;
}
