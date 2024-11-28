import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostMessagesRecord extends FirestoreRecord {
  PostMessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comm_user" field.
  DocumentReference? _commUser;
  DocumentReference? get commUser => _commUser;
  bool hasCommUser() => _commUser != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

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

  // "num_comments" field.
  int? _numComments;
  int get numComments => _numComments ?? 0;
  bool hasNumComments() => _numComments != null;

  // "moderator" field.
  DocumentReference? _moderator;
  DocumentReference? get moderator => _moderator;
  bool hasModerator() => _moderator != null;

  // "started_comm" field.
  DocumentReference? _startedComm;
  DocumentReference? get startedComm => _startedComm;
  bool hasStartedComm() => _startedComm != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _commUser = snapshotData['comm_user'] as DocumentReference?;
    _text = snapshotData['text'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _audio = snapshotData['audio'] as String?;
    _numLikes = castToType<int>(snapshotData['num_likes']);
    _numDislikes = castToType<int>(snapshotData['num_dislikes']);
    _numRedcards = castToType<int>(snapshotData['num_redcards']);
    _likes = getDataList(snapshotData['likes']);
    _dislikes = getDataList(snapshotData['dislikes']);
    _redcards = getDataList(snapshotData['redcards']);
    _numComments = castToType<int>(snapshotData['num_comments']);
    _moderator = snapshotData['moderator'] as DocumentReference?;
    _startedComm = snapshotData['started_comm'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('post_messages')
          : FirebaseFirestore.instance.collectionGroup('post_messages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('post_messages').doc(id);

  static Stream<PostMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostMessagesRecord.fromSnapshot(s));

  static Future<PostMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostMessagesRecord.fromSnapshot(s));

  static PostMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostMessagesRecordData({
  DocumentReference? commUser,
  String? text,
  DateTime? createdTime,
  String? image,
  String? audio,
  int? numLikes,
  int? numDislikes,
  int? numRedcards,
  int? numComments,
  DocumentReference? moderator,
  DocumentReference? startedComm,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comm_user': commUser,
      'text': text,
      'created_time': createdTime,
      'image': image,
      'audio': audio,
      'num_likes': numLikes,
      'num_dislikes': numDislikes,
      'num_redcards': numRedcards,
      'num_comments': numComments,
      'moderator': moderator,
      'started_comm': startedComm,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostMessagesRecordDocumentEquality
    implements Equality<PostMessagesRecord> {
  const PostMessagesRecordDocumentEquality();

  @override
  bool equals(PostMessagesRecord? e1, PostMessagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.commUser == e2?.commUser &&
        e1?.text == e2?.text &&
        e1?.createdTime == e2?.createdTime &&
        e1?.image == e2?.image &&
        e1?.audio == e2?.audio &&
        e1?.numLikes == e2?.numLikes &&
        e1?.numDislikes == e2?.numDislikes &&
        e1?.numRedcards == e2?.numRedcards &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        listEquality.equals(e1?.dislikes, e2?.dislikes) &&
        listEquality.equals(e1?.redcards, e2?.redcards) &&
        e1?.numComments == e2?.numComments &&
        e1?.moderator == e2?.moderator &&
        e1?.startedComm == e2?.startedComm;
  }

  @override
  int hash(PostMessagesRecord? e) => const ListEquality().hash([
        e?.commUser,
        e?.text,
        e?.createdTime,
        e?.image,
        e?.audio,
        e?.numLikes,
        e?.numDislikes,
        e?.numRedcards,
        e?.likes,
        e?.dislikes,
        e?.redcards,
        e?.numComments,
        e?.moderator,
        e?.startedComm
      ]);

  @override
  bool isValidKey(Object? o) => o is PostMessagesRecord;
}
