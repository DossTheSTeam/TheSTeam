import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "hour" field.
  int? _hour;
  int get hour => _hour ?? 0;
  bool hasHour() => _hour != null;

  // "minute" field.
  int? _minute;
  int get minute => _minute ?? 0;
  bool hasMinute() => _minute != null;

  // "teamdom" field.
  String? _teamdom;
  String get teamdom => _teamdom ?? '';
  bool hasTeamdom() => _teamdom != null;

  // "teamext" field.
  String? _teamext;
  String get teamext => _teamext ?? '';
  bool hasTeamext() => _teamext != null;

  // "draw" field.
  String? _draw;
  String get draw => _draw ?? '';
  bool hasDraw() => _draw != null;

  // "l2myes" field.
  String? _l2myes;
  String get l2myes => _l2myes ?? '';
  bool hasL2myes() => _l2myes != null;

  // "l2mno" field.
  String? _l2mno;
  String get l2mno => _l2mno ?? '';
  bool hasL2mno() => _l2mno != null;

  // "score_dom" field.
  int? _scoreDom;
  int get scoreDom => _scoreDom ?? 0;
  bool hasScoreDom() => _scoreDom != null;

  // "score_ext" field.
  int? _scoreExt;
  int get scoreExt => _scoreExt ?? 0;
  bool hasScoreExt() => _scoreExt != null;

  // "num_comms" field.
  int? _numComms;
  int get numComms => _numComms ?? 0;
  bool hasNumComms() => _numComms != null;

  // "num_likes" field.
  int? _numLikes;
  int get numLikes => _numLikes ?? 0;
  bool hasNumLikes() => _numLikes != null;

  // "num_dislikes" field.
  int? _numDislikes;
  int get numDislikes => _numDislikes ?? 0;
  bool hasNumDislikes() => _numDislikes != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "dislikes" field.
  List<DocumentReference>? _dislikes;
  List<DocumentReference> get dislikes => _dislikes ?? const [];
  bool hasDislikes() => _dislikes != null;

  // "seen_score" field.
  bool? _seenScore;
  bool get seenScore => _seenScore ?? false;
  bool hasSeenScore() => _seenScore != null;

  // "admin_user" field.
  DocumentReference? _adminUser;
  DocumentReference? get adminUser => _adminUser;
  bool hasAdminUser() => _adminUser != null;

  // "statut" field.
  bool? _statut;
  bool get statut => _statut ?? false;
  bool hasStatut() => _statut != null;

  // "sport_value" field.
  String? _sportValue;
  String get sportValue => _sportValue ?? '';
  bool hasSportValue() => _sportValue != null;

  // "teamdom_ref" field.
  DocumentReference? _teamdomRef;
  DocumentReference? get teamdomRef => _teamdomRef;
  bool hasTeamdomRef() => _teamdomRef != null;

  // "teamext_ref" field.
  DocumentReference? _teamextRef;
  DocumentReference? get teamextRef => _teamextRef;
  bool hasTeamextRef() => _teamextRef != null;

  // "league_value" field.
  String? _leagueValue;
  String get leagueValue => _leagueValue ?? '';
  bool hasLeagueValue() => _leagueValue != null;

  // "week" field.
  String? _week;
  String get week => _week ?? '';
  bool hasWeek() => _week != null;

  // "division_value" field.
  String? _divisionValue;
  String get divisionValue => _divisionValue ?? '';
  bool hasDivisionValue() => _divisionValue != null;

  // "points" field.
  String? _points;
  String get points => _points ?? '';
  bool hasPoints() => _points != null;

  // "plus" field.
  String? _plus;
  String get plus => _plus ?? '';
  bool hasPlus() => _plus != null;

  // "moins" field.
  String? _moins;
  String get moins => _moins ?? '';
  bool hasMoins() => _moins != null;

  // "first" field.
  String? _first;
  String get first => _first ?? '';
  bool hasFirst() => _first != null;

  // "podium" field.
  String? _podium;
  String get podium => _podium ?? '';
  bool hasPodium() => _podium != null;

  // "l2m_statut" field.
  bool? _l2mStatut;
  bool get l2mStatut => _l2mStatut ?? false;
  bool hasL2mStatut() => _l2mStatut != null;

  // "end_image" field.
  String? _endImage;
  String get endImage => _endImage ?? '';
  bool hasEndImage() => _endImage != null;

  // "image_dom" field.
  String? _imageDom;
  String get imageDom => _imageDom ?? '';
  bool hasImageDom() => _imageDom != null;

  // "image_ext" field.
  String? _imageExt;
  String get imageExt => _imageExt ?? '';
  bool hasImageExt() => _imageExt != null;

  // "posts" field.
  List<DocumentReference>? _posts;
  List<DocumentReference> get posts => _posts ?? const [];
  bool hasPosts() => _posts != null;

  // "notifs_users" field.
  List<DocumentReference>? _notifsUsers;
  List<DocumentReference> get notifsUsers => _notifsUsers ?? const [];
  bool hasNotifsUsers() => _notifsUsers != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _hour = castToType<int>(snapshotData['hour']);
    _minute = castToType<int>(snapshotData['minute']);
    _teamdom = snapshotData['teamdom'] as String?;
    _teamext = snapshotData['teamext'] as String?;
    _draw = snapshotData['draw'] as String?;
    _l2myes = snapshotData['l2myes'] as String?;
    _l2mno = snapshotData['l2mno'] as String?;
    _scoreDom = castToType<int>(snapshotData['score_dom']);
    _scoreExt = castToType<int>(snapshotData['score_ext']);
    _numComms = castToType<int>(snapshotData['num_comms']);
    _numLikes = castToType<int>(snapshotData['num_likes']);
    _numDislikes = castToType<int>(snapshotData['num_dislikes']);
    _likes = getDataList(snapshotData['likes']);
    _dislikes = getDataList(snapshotData['dislikes']);
    _seenScore = snapshotData['seen_score'] as bool?;
    _adminUser = snapshotData['admin_user'] as DocumentReference?;
    _statut = snapshotData['statut'] as bool?;
    _sportValue = snapshotData['sport_value'] as String?;
    _teamdomRef = snapshotData['teamdom_ref'] as DocumentReference?;
    _teamextRef = snapshotData['teamext_ref'] as DocumentReference?;
    _leagueValue = snapshotData['league_value'] as String?;
    _week = snapshotData['week'] as String?;
    _divisionValue = snapshotData['division_value'] as String?;
    _points = snapshotData['points'] as String?;
    _plus = snapshotData['plus'] as String?;
    _moins = snapshotData['moins'] as String?;
    _first = snapshotData['first'] as String?;
    _podium = snapshotData['podium'] as String?;
    _l2mStatut = snapshotData['l2m_statut'] as bool?;
    _endImage = snapshotData['end_image'] as String?;
    _imageDom = snapshotData['image_dom'] as String?;
    _imageExt = snapshotData['image_ext'] as String?;
    _posts = getDataList(snapshotData['posts']);
    _notifsUsers = getDataList(snapshotData['notifs_users']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  DateTime? date,
  int? hour,
  int? minute,
  String? teamdom,
  String? teamext,
  String? draw,
  String? l2myes,
  String? l2mno,
  int? scoreDom,
  int? scoreExt,
  int? numComms,
  int? numLikes,
  int? numDislikes,
  bool? seenScore,
  DocumentReference? adminUser,
  bool? statut,
  String? sportValue,
  DocumentReference? teamdomRef,
  DocumentReference? teamextRef,
  String? leagueValue,
  String? week,
  String? divisionValue,
  String? points,
  String? plus,
  String? moins,
  String? first,
  String? podium,
  bool? l2mStatut,
  String? endImage,
  String? imageDom,
  String? imageExt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'hour': hour,
      'minute': minute,
      'teamdom': teamdom,
      'teamext': teamext,
      'draw': draw,
      'l2myes': l2myes,
      'l2mno': l2mno,
      'score_dom': scoreDom,
      'score_ext': scoreExt,
      'num_comms': numComms,
      'num_likes': numLikes,
      'num_dislikes': numDislikes,
      'seen_score': seenScore,
      'admin_user': adminUser,
      'statut': statut,
      'sport_value': sportValue,
      'teamdom_ref': teamdomRef,
      'teamext_ref': teamextRef,
      'league_value': leagueValue,
      'week': week,
      'division_value': divisionValue,
      'points': points,
      'plus': plus,
      'moins': moins,
      'first': first,
      'podium': podium,
      'l2m_statut': l2mStatut,
      'end_image': endImage,
      'image_dom': imageDom,
      'image_ext': imageExt,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        e1?.hour == e2?.hour &&
        e1?.minute == e2?.minute &&
        e1?.teamdom == e2?.teamdom &&
        e1?.teamext == e2?.teamext &&
        e1?.draw == e2?.draw &&
        e1?.l2myes == e2?.l2myes &&
        e1?.l2mno == e2?.l2mno &&
        e1?.scoreDom == e2?.scoreDom &&
        e1?.scoreExt == e2?.scoreExt &&
        e1?.numComms == e2?.numComms &&
        e1?.numLikes == e2?.numLikes &&
        e1?.numDislikes == e2?.numDislikes &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        listEquality.equals(e1?.dislikes, e2?.dislikes) &&
        e1?.seenScore == e2?.seenScore &&
        e1?.adminUser == e2?.adminUser &&
        e1?.statut == e2?.statut &&
        e1?.sportValue == e2?.sportValue &&
        e1?.teamdomRef == e2?.teamdomRef &&
        e1?.teamextRef == e2?.teamextRef &&
        e1?.leagueValue == e2?.leagueValue &&
        e1?.week == e2?.week &&
        e1?.divisionValue == e2?.divisionValue &&
        e1?.points == e2?.points &&
        e1?.plus == e2?.plus &&
        e1?.moins == e2?.moins &&
        e1?.first == e2?.first &&
        e1?.podium == e2?.podium &&
        e1?.l2mStatut == e2?.l2mStatut &&
        e1?.endImage == e2?.endImage &&
        e1?.imageDom == e2?.imageDom &&
        e1?.imageExt == e2?.imageExt &&
        listEquality.equals(e1?.posts, e2?.posts) &&
        listEquality.equals(e1?.notifsUsers, e2?.notifsUsers);
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.date,
        e?.hour,
        e?.minute,
        e?.teamdom,
        e?.teamext,
        e?.draw,
        e?.l2myes,
        e?.l2mno,
        e?.scoreDom,
        e?.scoreExt,
        e?.numComms,
        e?.numLikes,
        e?.numDislikes,
        e?.likes,
        e?.dislikes,
        e?.seenScore,
        e?.adminUser,
        e?.statut,
        e?.sportValue,
        e?.teamdomRef,
        e?.teamextRef,
        e?.leagueValue,
        e?.week,
        e?.divisionValue,
        e?.points,
        e?.plus,
        e?.moins,
        e?.first,
        e?.podium,
        e?.l2mStatut,
        e?.endImage,
        e?.imageDom,
        e?.imageExt,
        e?.posts,
        e?.notifsUsers
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
