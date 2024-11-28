import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "member" field.
  DocumentReference? _member;
  DocumentReference? get member => _member;
  bool hasMember() => _member != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  // "num_comments" field.
  int? _numComments;
  int get numComments => _numComments ?? 0;
  bool hasNumComments() => _numComments != null;

  // "num_likes" field.
  int? _numLikes;
  int get numLikes => _numLikes ?? 0;
  bool hasNumLikes() => _numLikes != null;

  // "num_dislikes" field.
  int? _numDislikes;
  int get numDislikes => _numDislikes ?? 0;
  bool hasNumDislikes() => _numDislikes != null;

  // "num_redcards" field.
  int? _numRedcards;
  int get numRedcards => _numRedcards ?? 0;
  bool hasNumRedcards() => _numRedcards != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "dislikes" field.
  List<DocumentReference>? _dislikes;
  List<DocumentReference> get dislikes => _dislikes ?? const [];
  bool hasDislikes() => _dislikes != null;

  // "redcards" field.
  List<DocumentReference>? _redcards;
  List<DocumentReference> get redcards => _redcards ?? const [];
  bool hasRedcards() => _redcards != null;

  // "league_value" field.
  String? _leagueValue;
  String get leagueValue => _leagueValue ?? '';
  bool hasLeagueValue() => _leagueValue != null;

  // "moderator" field.
  DocumentReference? _moderator;
  DocumentReference? get moderator => _moderator;
  bool hasModerator() => _moderator != null;

  // "team_ref" field.
  DocumentReference? _teamRef;
  DocumentReference? get teamRef => _teamRef;
  bool hasTeamRef() => _teamRef != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "esport" field.
  bool? _esport;
  bool get esport => _esport ?? false;
  bool hasEsport() => _esport != null;

  // "sport_value" field.
  String? _sportValue;
  String get sportValue => _sportValue ?? '';
  bool hasSportValue() => _sportValue != null;

  // "choice1" field.
  String? _choice1;
  String get choice1 => _choice1 ?? '';
  bool hasChoice1() => _choice1 != null;

  // "choice2" field.
  String? _choice2;
  String get choice2 => _choice2 ?? '';
  bool hasChoice2() => _choice2 != null;

  // "choice3" field.
  String? _choice3;
  String get choice3 => _choice3 ?? '';
  bool hasChoice3() => _choice3 != null;

  // "list4choice1" field.
  List<DocumentReference>? _list4choice1;
  List<DocumentReference> get list4choice1 => _list4choice1 ?? const [];
  bool hasList4choice1() => _list4choice1 != null;

  // "list4choice2" field.
  List<DocumentReference>? _list4choice2;
  List<DocumentReference> get list4choice2 => _list4choice2 ?? const [];
  bool hasList4choice2() => _list4choice2 != null;

  // "list4choice3" field.
  List<DocumentReference>? _list4choice3;
  List<DocumentReference> get list4choice3 => _list4choice3 ?? const [];
  bool hasList4choice3() => _list4choice3 != null;

  void _initializeFields() {
    _member = snapshotData['member'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _audio = snapshotData['audio'] as String?;
    _numComments = castToType<int>(snapshotData['num_comments']);
    _numLikes = castToType<int>(snapshotData['num_likes']);
    _numDislikes = castToType<int>(snapshotData['num_dislikes']);
    _numRedcards = castToType<int>(snapshotData['num_redcards']);
    _likes = getDataList(snapshotData['likes']);
    _dislikes = getDataList(snapshotData['dislikes']);
    _redcards = getDataList(snapshotData['redcards']);
    _leagueValue = snapshotData['league_value'] as String?;
    _moderator = snapshotData['moderator'] as DocumentReference?;
    _teamRef = snapshotData['team_ref'] as DocumentReference?;
    _video = snapshotData['video'] as String?;
    _esport = snapshotData['esport'] as bool?;
    _sportValue = snapshotData['sport_value'] as String?;
    _choice1 = snapshotData['choice1'] as String?;
    _choice2 = snapshotData['choice2'] as String?;
    _choice3 = snapshotData['choice3'] as String?;
    _list4choice1 = getDataList(snapshotData['list4choice1']);
    _list4choice2 = getDataList(snapshotData['list4choice2']);
    _list4choice3 = getDataList(snapshotData['list4choice3']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  DocumentReference? member,
  String? title,
  String? description,
  DateTime? createdTime,
  String? image,
  String? audio,
  int? numComments,
  int? numLikes,
  int? numDislikes,
  int? numRedcards,
  String? leagueValue,
  DocumentReference? moderator,
  DocumentReference? teamRef,
  String? video,
  bool? esport,
  String? sportValue,
  String? choice1,
  String? choice2,
  String? choice3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'member': member,
      'title': title,
      'description': description,
      'created_time': createdTime,
      'image': image,
      'audio': audio,
      'num_comments': numComments,
      'num_likes': numLikes,
      'num_dislikes': numDislikes,
      'num_redcards': numRedcards,
      'league_value': leagueValue,
      'moderator': moderator,
      'team_ref': teamRef,
      'video': video,
      'esport': esport,
      'sport_value': sportValue,
      'choice1': choice1,
      'choice2': choice2,
      'choice3': choice3,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.member == e2?.member &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.createdTime == e2?.createdTime &&
        e1?.image == e2?.image &&
        e1?.audio == e2?.audio &&
        e1?.numComments == e2?.numComments &&
        e1?.numLikes == e2?.numLikes &&
        e1?.numDislikes == e2?.numDislikes &&
        e1?.numRedcards == e2?.numRedcards &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        listEquality.equals(e1?.dislikes, e2?.dislikes) &&
        listEquality.equals(e1?.redcards, e2?.redcards) &&
        e1?.leagueValue == e2?.leagueValue &&
        e1?.moderator == e2?.moderator &&
        e1?.teamRef == e2?.teamRef &&
        e1?.video == e2?.video &&
        e1?.esport == e2?.esport &&
        e1?.sportValue == e2?.sportValue &&
        e1?.choice1 == e2?.choice1 &&
        e1?.choice2 == e2?.choice2 &&
        e1?.choice3 == e2?.choice3 &&
        listEquality.equals(e1?.list4choice1, e2?.list4choice1) &&
        listEquality.equals(e1?.list4choice2, e2?.list4choice2) &&
        listEquality.equals(e1?.list4choice3, e2?.list4choice3);
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.member,
        e?.title,
        e?.description,
        e?.createdTime,
        e?.image,
        e?.audio,
        e?.numComments,
        e?.numLikes,
        e?.numDislikes,
        e?.numRedcards,
        e?.likes,
        e?.dislikes,
        e?.redcards,
        e?.leagueValue,
        e?.moderator,
        e?.teamRef,
        e?.video,
        e?.esport,
        e?.sportValue,
        e?.choice1,
        e?.choice2,
        e?.choice3,
        e?.list4choice1,
        e?.list4choice2,
        e?.list4choice3
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
