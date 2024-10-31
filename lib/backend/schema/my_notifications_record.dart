import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyNotificationsRecord extends FirestoreRecord {
  MyNotificationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "post" field.
  DocumentReference? _post;
  DocumentReference? get post => _post;
  bool hasPost() => _post != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "date_time" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  // "text_fouls" field.
  String? _textFouls;
  String get textFouls => _textFouls ?? '';
  bool hasTextFouls() => _textFouls != null;

  // "moderator" field.
  DocumentReference? _moderator;
  DocumentReference? get moderator => _moderator;
  bool hasModerator() => _moderator != null;

  // "mod_seen" field.
  bool? _modSeen;
  bool get modSeen => _modSeen ?? false;
  bool hasModSeen() => _modSeen != null;

  // "team_ref" field.
  DocumentReference? _teamRef;
  DocumentReference? get teamRef => _teamRef;
  bool hasTeamRef() => _teamRef != null;

  // "post_message" field.
  DocumentReference? _postMessage;
  DocumentReference? get postMessage => _postMessage;
  bool hasPostMessage() => _postMessage != null;

  // "event_message" field.
  DocumentReference? _eventMessage;
  DocumentReference? get eventMessage => _eventMessage;
  bool hasEventMessage() => _eventMessage != null;

  // "text_reasons" field.
  String? _textReasons;
  String get textReasons => _textReasons ?? '';
  bool hasTextReasons() => _textReasons != null;

  // "my_eteam" field.
  DocumentReference? _myEteam;
  DocumentReference? get myEteam => _myEteam;
  bool hasMyEteam() => _myEteam != null;

  // "e_event" field.
  DocumentReference? _eEvent;
  DocumentReference? get eEvent => _eEvent;
  bool hasEEvent() => _eEvent != null;

  // "eteam_dom" field.
  DocumentReference? _eteamDom;
  DocumentReference? get eteamDom => _eteamDom;
  bool hasEteamDom() => _eteamDom != null;

  // "eteam_ext" field.
  DocumentReference? _eteamExt;
  DocumentReference? get eteamExt => _eteamExt;
  bool hasEteamExt() => _eteamExt != null;

  // "eteam_win" field.
  DocumentReference? _eteamWin;
  DocumentReference? get eteamWin => _eteamWin;
  bool hasEteamWin() => _eteamWin != null;

  // "score_dom" field.
  int? _scoreDom;
  int get scoreDom => _scoreDom ?? 0;
  bool hasScoreDom() => _scoreDom != null;

  // "score_ext" field.
  int? _scoreExt;
  int get scoreExt => _scoreExt ?? 0;
  bool hasScoreExt() => _scoreExt != null;

  // "eteam_draw" field.
  String? _eteamDraw;
  String get eteamDraw => _eteamDraw ?? '';
  bool hasEteamDraw() => _eteamDraw != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "bool_boss" field.
  bool? _boolBoss;
  bool get boolBoss => _boolBoss ?? false;
  bool hasBoolBoss() => _boolBoss != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _post = snapshotData['post'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _dateTime = snapshotData['date_time'] as DateTime?;
    _seen = snapshotData['seen'] as bool?;
    _textFouls = snapshotData['text_fouls'] as String?;
    _moderator = snapshotData['moderator'] as DocumentReference?;
    _modSeen = snapshotData['mod_seen'] as bool?;
    _teamRef = snapshotData['team_ref'] as DocumentReference?;
    _postMessage = snapshotData['post_message'] as DocumentReference?;
    _eventMessage = snapshotData['event_message'] as DocumentReference?;
    _textReasons = snapshotData['text_reasons'] as String?;
    _myEteam = snapshotData['my_eteam'] as DocumentReference?;
    _eEvent = snapshotData['e_event'] as DocumentReference?;
    _eteamDom = snapshotData['eteam_dom'] as DocumentReference?;
    _eteamExt = snapshotData['eteam_ext'] as DocumentReference?;
    _eteamWin = snapshotData['eteam_win'] as DocumentReference?;
    _scoreDom = castToType<int>(snapshotData['score_dom']);
    _scoreExt = castToType<int>(snapshotData['score_ext']);
    _eteamDraw = snapshotData['eteam_draw'] as String?;
    _image = snapshotData['image'] as String?;
    _boolBoss = snapshotData['bool_boss'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('my_notifications')
          : FirebaseFirestore.instance.collectionGroup('my_notifications');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('my_notifications').doc(id);

  static Stream<MyNotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyNotificationsRecord.fromSnapshot(s));

  static Future<MyNotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyNotificationsRecord.fromSnapshot(s));

  static MyNotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyNotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyNotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyNotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyNotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyNotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyNotificationsRecordData({
  String? text,
  DocumentReference? post,
  DocumentReference? userRef,
  DateTime? dateTime,
  bool? seen,
  String? textFouls,
  DocumentReference? moderator,
  bool? modSeen,
  DocumentReference? teamRef,
  DocumentReference? postMessage,
  DocumentReference? eventMessage,
  String? textReasons,
  DocumentReference? myEteam,
  DocumentReference? eEvent,
  DocumentReference? eteamDom,
  DocumentReference? eteamExt,
  DocumentReference? eteamWin,
  int? scoreDom,
  int? scoreExt,
  String? eteamDraw,
  String? image,
  bool? boolBoss,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'post': post,
      'user_ref': userRef,
      'date_time': dateTime,
      'seen': seen,
      'text_fouls': textFouls,
      'moderator': moderator,
      'mod_seen': modSeen,
      'team_ref': teamRef,
      'post_message': postMessage,
      'event_message': eventMessage,
      'text_reasons': textReasons,
      'my_eteam': myEteam,
      'e_event': eEvent,
      'eteam_dom': eteamDom,
      'eteam_ext': eteamExt,
      'eteam_win': eteamWin,
      'score_dom': scoreDom,
      'score_ext': scoreExt,
      'eteam_draw': eteamDraw,
      'image': image,
      'bool_boss': boolBoss,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyNotificationsRecordDocumentEquality
    implements Equality<MyNotificationsRecord> {
  const MyNotificationsRecordDocumentEquality();

  @override
  bool equals(MyNotificationsRecord? e1, MyNotificationsRecord? e2) {
    return e1?.text == e2?.text &&
        e1?.post == e2?.post &&
        e1?.userRef == e2?.userRef &&
        e1?.dateTime == e2?.dateTime &&
        e1?.seen == e2?.seen &&
        e1?.textFouls == e2?.textFouls &&
        e1?.moderator == e2?.moderator &&
        e1?.modSeen == e2?.modSeen &&
        e1?.teamRef == e2?.teamRef &&
        e1?.postMessage == e2?.postMessage &&
        e1?.eventMessage == e2?.eventMessage &&
        e1?.textReasons == e2?.textReasons &&
        e1?.myEteam == e2?.myEteam &&
        e1?.eEvent == e2?.eEvent &&
        e1?.eteamDom == e2?.eteamDom &&
        e1?.eteamExt == e2?.eteamExt &&
        e1?.eteamWin == e2?.eteamWin &&
        e1?.scoreDom == e2?.scoreDom &&
        e1?.scoreExt == e2?.scoreExt &&
        e1?.eteamDraw == e2?.eteamDraw &&
        e1?.image == e2?.image &&
        e1?.boolBoss == e2?.boolBoss;
  }

  @override
  int hash(MyNotificationsRecord? e) => const ListEquality().hash([
        e?.text,
        e?.post,
        e?.userRef,
        e?.dateTime,
        e?.seen,
        e?.textFouls,
        e?.moderator,
        e?.modSeen,
        e?.teamRef,
        e?.postMessage,
        e?.eventMessage,
        e?.textReasons,
        e?.myEteam,
        e?.eEvent,
        e?.eteamDom,
        e?.eteamExt,
        e?.eteamWin,
        e?.scoreDom,
        e?.scoreExt,
        e?.eteamDraw,
        e?.image,
        e?.boolBoss
      ]);

  @override
  bool isValidKey(Object? o) => o is MyNotificationsRecord;
}
