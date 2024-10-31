import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyTeamslikeRecord extends FirestoreRecord {
  MyTeamslikeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "teams" field.
  List<DocumentReference>? _teams;
  List<DocumentReference> get teams => _teams ?? const [];
  bool hasTeams() => _teams != null;

  // "esport" field.
  bool? _esport;
  bool get esport => _esport ?? false;
  bool hasEsport() => _esport != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _teams = getDataList(snapshotData['teams']);
    _esport = snapshotData['esport'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('my_teamslike')
          : FirebaseFirestore.instance.collectionGroup('my_teamslike');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('my_teamslike').doc(id);

  static Stream<MyTeamslikeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyTeamslikeRecord.fromSnapshot(s));

  static Future<MyTeamslikeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyTeamslikeRecord.fromSnapshot(s));

  static MyTeamslikeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyTeamslikeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyTeamslikeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyTeamslikeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyTeamslikeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyTeamslikeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyTeamslikeRecordData({
  bool? esport,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'esport': esport,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyTeamslikeRecordDocumentEquality implements Equality<MyTeamslikeRecord> {
  const MyTeamslikeRecordDocumentEquality();

  @override
  bool equals(MyTeamslikeRecord? e1, MyTeamslikeRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.teams, e2?.teams) &&
        e1?.esport == e2?.esport;
  }

  @override
  int hash(MyTeamslikeRecord? e) =>
      const ListEquality().hash([e?.teams, e?.esport]);

  @override
  bool isValidKey(Object? o) => o is MyTeamslikeRecord;
}
