import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyTeamsRecord extends FirestoreRecord {
  MyTeamsRecord._(
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
          ? parent.collection('my_teams')
          : FirebaseFirestore.instance.collectionGroup('my_teams');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('my_teams').doc(id);

  static Stream<MyTeamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyTeamsRecord.fromSnapshot(s));

  static Future<MyTeamsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyTeamsRecord.fromSnapshot(s));

  static MyTeamsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyTeamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyTeamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyTeamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyTeamsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyTeamsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyTeamsRecordData({
  bool? esport,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'esport': esport,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyTeamsRecordDocumentEquality implements Equality<MyTeamsRecord> {
  const MyTeamsRecordDocumentEquality();

  @override
  bool equals(MyTeamsRecord? e1, MyTeamsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.teams, e2?.teams) &&
        e1?.esport == e2?.esport;
  }

  @override
  int hash(MyTeamsRecord? e) =>
      const ListEquality().hash([e?.teams, e?.esport]);

  @override
  bool isValidKey(Object? o) => o is MyTeamsRecord;
}
