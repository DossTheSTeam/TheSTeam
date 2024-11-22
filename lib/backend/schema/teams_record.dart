import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamsRecord extends FirestoreRecord {
  TeamsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  bool hasValue() => _value != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "admin_user" field.
  DocumentReference? _adminUser;
  DocumentReference? get adminUser => _adminUser;
  bool hasAdminUser() => _adminUser != null;

  // "fans" field.
  List<DocumentReference>? _fans;
  List<DocumentReference> get fans => _fans ?? const [];
  bool hasFans() => _fans != null;

  // "members" field.
  List<DocumentReference>? _members;
  List<DocumentReference> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  // "blocks" field.
  List<DocumentReference>? _blocks;
  List<DocumentReference> get blocks => _blocks ?? const [];
  bool hasBlocks() => _blocks != null;

  // "sport_value" field.
  String? _sportValue;
  String get sportValue => _sportValue ?? '';
  bool hasSportValue() => _sportValue != null;

  // "league_value" field.
  String? _leagueValue;
  String get leagueValue => _leagueValue ?? '';
  bool hasLeagueValue() => _leagueValue != null;

  // "wins" field.
  int? _wins;
  int get wins => _wins ?? 0;
  bool hasWins() => _wins != null;

  // "draws" field.
  int? _draws;
  int get draws => _draws ?? 0;
  bool hasDraws() => _draws != null;

  // "looses" field.
  int? _looses;
  int get looses => _looses ?? 0;
  bool hasLooses() => _looses != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "boss" field.
  DocumentReference? _boss;
  DocumentReference? get boss => _boss;
  bool hasBoss() => _boss != null;

  // "esport" field.
  bool? _esport;
  bool get esport => _esport ?? false;
  bool hasEsport() => _esport != null;

  // "division_value" field.
  String? _divisionValue;
  String get divisionValue => _divisionValue ?? '';
  bool hasDivisionValue() => _divisionValue != null;

  // "goals_points_in" field.
  int? _goalsPointsIn;
  int get goalsPointsIn => _goalsPointsIn ?? 0;
  bool hasGoalsPointsIn() => _goalsPointsIn != null;

  // "goals_points_out" field.
  int? _goalsPointsOut;
  int get goalsPointsOut => _goalsPointsOut ?? 0;
  bool hasGoalsPointsOut() => _goalsPointsOut != null;

  // "total_games" field.
  int? _totalGames;
  int get totalGames => _totalGames ?? 0;
  bool hasTotalGames() => _totalGames != null;

  // "update_time" field.
  DateTime? _updateTime;
  DateTime? get updateTime => _updateTime;
  bool hasUpdateTime() => _updateTime != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "red_cards" field.
  int? _redCards;
  int get redCards => _redCards ?? 0;
  bool hasRedCards() => _redCards != null;

  // "guest" field.
  bool? _guest;
  bool get guest => _guest ?? false;
  bool hasGuest() => _guest != null;

  // "additional_league" field.
  String? _additionalLeague;
  String get additionalLeague => _additionalLeague ?? '';
  bool hasAdditionalLeague() => _additionalLeague != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _value = snapshotData['value'] as String?;
    _logo = snapshotData['logo'] as String?;
    _adminUser = snapshotData['admin_user'] as DocumentReference?;
    _fans = getDataList(snapshotData['fans']);
    _members = getDataList(snapshotData['members']);
    _blocks = getDataList(snapshotData['blocks']);
    _sportValue = snapshotData['sport_value'] as String?;
    _leagueValue = snapshotData['league_value'] as String?;
    _wins = castToType<int>(snapshotData['wins']);
    _draws = castToType<int>(snapshotData['draws']);
    _looses = castToType<int>(snapshotData['looses']);
    _points = castToType<int>(snapshotData['points']);
    _boss = snapshotData['boss'] as DocumentReference?;
    _esport = snapshotData['esport'] as bool?;
    _divisionValue = snapshotData['division_value'] as String?;
    _goalsPointsIn = castToType<int>(snapshotData['goals_points_in']);
    _goalsPointsOut = castToType<int>(snapshotData['goals_points_out']);
    _totalGames = castToType<int>(snapshotData['total_games']);
    _updateTime = snapshotData['update_time'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _redCards = castToType<int>(snapshotData['red_cards']);
    _guest = snapshotData['guest'] as bool?;
    _additionalLeague = snapshotData['additional_league'] as String?;
    _bio = snapshotData['bio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teams');

  static Stream<TeamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamsRecord.fromSnapshot(s));

  static Future<TeamsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamsRecord.fromSnapshot(s));

  static TeamsRecord fromSnapshot(DocumentSnapshot snapshot) => TeamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamsRecordData({
  String? name,
  String? value,
  String? logo,
  DocumentReference? adminUser,
  String? sportValue,
  String? leagueValue,
  int? wins,
  int? draws,
  int? looses,
  int? points,
  DocumentReference? boss,
  bool? esport,
  String? divisionValue,
  int? goalsPointsIn,
  int? goalsPointsOut,
  int? totalGames,
  DateTime? updateTime,
  DateTime? createdTime,
  int? redCards,
  bool? guest,
  String? additionalLeague,
  String? bio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'value': value,
      'logo': logo,
      'admin_user': adminUser,
      'sport_value': sportValue,
      'league_value': leagueValue,
      'wins': wins,
      'draws': draws,
      'looses': looses,
      'points': points,
      'boss': boss,
      'esport': esport,
      'division_value': divisionValue,
      'goals_points_in': goalsPointsIn,
      'goals_points_out': goalsPointsOut,
      'total_games': totalGames,
      'update_time': updateTime,
      'created_time': createdTime,
      'red_cards': redCards,
      'guest': guest,
      'additional_league': additionalLeague,
      'bio': bio,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamsRecordDocumentEquality implements Equality<TeamsRecord> {
  const TeamsRecordDocumentEquality();

  @override
  bool equals(TeamsRecord? e1, TeamsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.value == e2?.value &&
        e1?.logo == e2?.logo &&
        e1?.adminUser == e2?.adminUser &&
        listEquality.equals(e1?.fans, e2?.fans) &&
        listEquality.equals(e1?.members, e2?.members) &&
        listEquality.equals(e1?.blocks, e2?.blocks) &&
        e1?.sportValue == e2?.sportValue &&
        e1?.leagueValue == e2?.leagueValue &&
        e1?.wins == e2?.wins &&
        e1?.draws == e2?.draws &&
        e1?.looses == e2?.looses &&
        e1?.points == e2?.points &&
        e1?.boss == e2?.boss &&
        e1?.esport == e2?.esport &&
        e1?.divisionValue == e2?.divisionValue &&
        e1?.goalsPointsIn == e2?.goalsPointsIn &&
        e1?.goalsPointsOut == e2?.goalsPointsOut &&
        e1?.totalGames == e2?.totalGames &&
        e1?.updateTime == e2?.updateTime &&
        e1?.createdTime == e2?.createdTime &&
        e1?.redCards == e2?.redCards &&
        e1?.guest == e2?.guest &&
        e1?.additionalLeague == e2?.additionalLeague &&
        e1?.bio == e2?.bio;
  }

  @override
  int hash(TeamsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.value,
        e?.logo,
        e?.adminUser,
        e?.fans,
        e?.members,
        e?.blocks,
        e?.sportValue,
        e?.leagueValue,
        e?.wins,
        e?.draws,
        e?.looses,
        e?.points,
        e?.boss,
        e?.esport,
        e?.divisionValue,
        e?.goalsPointsIn,
        e?.goalsPointsOut,
        e?.totalGames,
        e?.updateTime,
        e?.createdTime,
        e?.redCards,
        e?.guest,
        e?.additionalLeague,
        e?.bio
      ]);

  @override
  bool isValidKey(Object? o) => o is TeamsRecord;
}
