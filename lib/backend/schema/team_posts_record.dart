import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamPostsRecord extends FirestoreRecord {
  TeamPostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "posts" field.
  DocumentReference? _posts;
  DocumentReference? get posts => _posts;
  bool hasPosts() => _posts != null;

  // "survey" field.
  bool? _survey;
  bool get survey => _survey ?? false;
  bool hasSurvey() => _survey != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _posts = snapshotData['posts'] as DocumentReference?;
    _survey = snapshotData['survey'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('team_posts')
          : FirebaseFirestore.instance.collectionGroup('team_posts');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('team_posts').doc(id);

  static Stream<TeamPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamPostsRecord.fromSnapshot(s));

  static Future<TeamPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamPostsRecord.fromSnapshot(s));

  static TeamPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeamPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamPostsRecordData({
  DateTime? createdTime,
  DocumentReference? posts,
  bool? survey,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'posts': posts,
      'survey': survey,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamPostsRecordDocumentEquality implements Equality<TeamPostsRecord> {
  const TeamPostsRecordDocumentEquality();

  @override
  bool equals(TeamPostsRecord? e1, TeamPostsRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.posts == e2?.posts &&
        e1?.survey == e2?.survey;
  }

  @override
  int hash(TeamPostsRecord? e) =>
      const ListEquality().hash([e?.createdTime, e?.posts, e?.survey]);

  @override
  bool isValidKey(Object? o) => o is TeamPostsRecord;
}
