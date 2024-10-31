import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamEventsRecord extends FirestoreRecord {
  TeamEventsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "started_time" field.
  DateTime? _startedTime;
  DateTime? get startedTime => _startedTime;
  bool hasStartedTime() => _startedTime != null;

  // "events" field.
  DocumentReference? _events;
  DocumentReference? get events => _events;
  bool hasEvents() => _events != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _startedTime = snapshotData['started_time'] as DateTime?;
    _events = snapshotData['events'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('team_events')
          : FirebaseFirestore.instance.collectionGroup('team_events');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('team_events').doc(id);

  static Stream<TeamEventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamEventsRecord.fromSnapshot(s));

  static Future<TeamEventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamEventsRecord.fromSnapshot(s));

  static TeamEventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeamEventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamEventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamEventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamEventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamEventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamEventsRecordData({
  DateTime? startedTime,
  DocumentReference? events,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'started_time': startedTime,
      'events': events,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamEventsRecordDocumentEquality implements Equality<TeamEventsRecord> {
  const TeamEventsRecordDocumentEquality();

  @override
  bool equals(TeamEventsRecord? e1, TeamEventsRecord? e2) {
    return e1?.startedTime == e2?.startedTime && e1?.events == e2?.events;
  }

  @override
  int hash(TeamEventsRecord? e) =>
      const ListEquality().hash([e?.startedTime, e?.events]);

  @override
  bool isValidKey(Object? o) => o is TeamEventsRecord;
}
