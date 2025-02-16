import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamConferenceRecord extends FirestoreRecord {
  TeamConferenceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  // "members" field.
  List<DocumentReference>? _members;
  List<DocumentReference> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  // "fans" field.
  List<DocumentReference>? _fans;
  List<DocumentReference> get fans => _fans ?? const [];
  bool hasFans() => _fans != null;

  // "public" field.
  bool? _public;
  bool get public => _public ?? false;
  bool hasPublic() => _public != null;

  // "no_listens" field.
  List<DocumentReference>? _noListens;
  List<DocumentReference> get noListens => _noListens ?? const [];
  bool hasNoListens() => _noListens != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _audio = snapshotData['audio'] as String?;
    _members = getDataList(snapshotData['members']);
    _fans = getDataList(snapshotData['fans']);
    _public = snapshotData['public'] as bool?;
    _noListens = getDataList(snapshotData['no_listens']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('team_conference')
          : FirebaseFirestore.instance.collectionGroup('team_conference');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('team_conference').doc(id);

  static Stream<TeamConferenceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamConferenceRecord.fromSnapshot(s));

  static Future<TeamConferenceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamConferenceRecord.fromSnapshot(s));

  static TeamConferenceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeamConferenceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamConferenceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamConferenceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamConferenceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamConferenceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamConferenceRecordData({
  String? audio,
  bool? public,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'audio': audio,
      'public': public,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamConferenceRecordDocumentEquality
    implements Equality<TeamConferenceRecord> {
  const TeamConferenceRecordDocumentEquality();

  @override
  bool equals(TeamConferenceRecord? e1, TeamConferenceRecord? e2) {
    const listEquality = ListEquality();
    return e1?.audio == e2?.audio &&
        listEquality.equals(e1?.members, e2?.members) &&
        listEquality.equals(e1?.fans, e2?.fans) &&
        e1?.public == e2?.public &&
        listEquality.equals(e1?.noListens, e2?.noListens);
  }

  @override
  int hash(TeamConferenceRecord? e) => const ListEquality()
      .hash([e?.audio, e?.members, e?.fans, e?.public, e?.noListens]);

  @override
  bool isValidKey(Object? o) => o is TeamConferenceRecord;
}
