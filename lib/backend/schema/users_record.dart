import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "image_fond" field.
  String? _imageFond;
  String get imageFond => _imageFond ?? '';
  bool hasImageFond() => _imageFond != null;

  // "stock" field.
  double? _stock;
  double get stock => _stock ?? 0.0;
  bool hasStock() => _stock != null;

  // "cart_amount" field.
  double? _cartAmount;
  double get cartAmount => _cartAmount ?? 0.0;
  bool hasCartAmount() => _cartAmount != null;

  // "click_s_team" field.
  int? _clickSTeam;
  int get clickSTeam => _clickSTeam ?? 0;
  bool hasClickSTeam() => _clickSTeam != null;

  // "bet_win" field.
  int? _betWin;
  int get betWin => _betWin ?? 0;
  bool hasBetWin() => _betWin != null;

  // "total_bets" field.
  int? _totalBets;
  int get totalBets => _totalBets ?? 0;
  bool hasTotalBets() => _totalBets != null;

  // "bests" field.
  List<DocumentReference>? _bests;
  List<DocumentReference> get bests => _bests ?? const [];
  bool hasBests() => _bests != null;

  // "fans" field.
  List<DocumentReference>? _fans;
  List<DocumentReference> get fans => _fans ?? const [];
  bool hasFans() => _fans != null;

  // "blocks" field.
  List<DocumentReference>? _blocks;
  List<DocumentReference> get blocks => _blocks ?? const [];
  bool hasBlocks() => _blocks != null;

  // "num_penalities" field.
  int? _numPenalities;
  int get numPenalities => _numPenalities ?? 0;
  bool hasNumPenalities() => _numPenalities != null;

  // "rank_value" field.
  String? _rankValue;
  String get rankValue => _rankValue ?? '';
  bool hasRankValue() => _rankValue != null;

  // "stsocialapp" field.
  String? _stsocialapp;
  String get stsocialapp => _stsocialapp ?? '';
  bool hasStsocialapp() => _stsocialapp != null;

  // "mise" field.
  double? _mise;
  double get mise => _mise ?? 0.0;
  bool hasMise() => _mise != null;

  // "division_value" field.
  String? _divisionValue;
  String get divisionValue => _divisionValue ?? '';
  bool hasDivisionValue() => _divisionValue != null;

  // "moderator" field.
  DocumentReference? _moderator;
  DocumentReference? get moderator => _moderator;
  bool hasModerator() => _moderator != null;

  // "update_time" field.
  DateTime? _updateTime;
  DateTime? get updateTime => _updateTime;
  bool hasUpdateTime() => _updateTime != null;

  // "total_gains" field.
  double? _totalGains;
  double get totalGains => _totalGains ?? 0.0;
  bool hasTotalGains() => _totalGains != null;

  // "total_mises" field.
  double? _totalMises;
  double get totalMises => _totalMises ?? 0.0;
  bool hasTotalMises() => _totalMises != null;

  // "earnings_total" field.
  double? _earningsTotal;
  double get earningsTotal => _earningsTotal ?? 0.0;
  bool hasEarningsTotal() => _earningsTotal != null;

  // "bet_loose" field.
  int? _betLoose;
  int get betLoose => _betLoose ?? 0;
  bool hasBetLoose() => _betLoose != null;

  // "esport" field.
  bool? _esport;
  bool get esport => _esport ?? false;
  bool hasEsport() => _esport != null;

  // "tops" field.
  int? _tops;
  int get tops => _tops ?? 0;
  bool hasTops() => _tops != null;

  // "flops" field.
  int? _flops;
  int get flops => _flops ?? 0;
  bool hasFlops() => _flops != null;

  // "total_games" field.
  int? _totalGames;
  int get totalGames => _totalGames ?? 0;
  bool hasTotalGames() => _totalGames != null;

  // "erank_value" field.
  String? _erankValue;
  String get erankValue => _erankValue ?? '';
  bool hasErankValue() => _erankValue != null;

  // "edivision_value" field.
  String? _edivisionValue;
  String get edivisionValue => _edivisionValue ?? '';
  bool hasEdivisionValue() => _edivisionValue != null;

  // "esport_value" field.
  String? _esportValue;
  String get esportValue => _esportValue ?? '';
  bool hasEsportValue() => _esportValue != null;

  // "eteam_ref" field.
  DocumentReference? _eteamRef;
  DocumentReference? get eteamRef => _eteamRef;
  bool hasEteamRef() => _eteamRef != null;

  // "family_name" field.
  String? _familyName;
  String get familyName => _familyName ?? '';
  bool hasFamilyName() => _familyName != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "guest" field.
  bool? _guest;
  bool get guest => _guest ?? false;
  bool hasGuest() => _guest != null;

  // "bool_mvp" field.
  bool? _boolMvp;
  bool get boolMvp => _boolMvp ?? false;
  bool hasBoolMvp() => _boolMvp != null;

  // "bool_top" field.
  bool? _boolTop;
  bool get boolTop => _boolTop ?? false;
  bool hasBoolTop() => _boolTop != null;

  // "bool_flop" field.
  bool? _boolFlop;
  bool get boolFlop => _boolFlop ?? false;
  bool hasBoolFlop() => _boolFlop != null;

  // "e_update_time" field.
  DateTime? _eUpdateTime;
  DateTime? get eUpdateTime => _eUpdateTime;
  bool hasEUpdateTime() => _eUpdateTime != null;

  // "topsflops" field.
  int? _topsflops;
  int get topsflops => _topsflops ?? 0;
  bool hasTopsflops() => _topsflops != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _imageFond = snapshotData['image_fond'] as String?;
    _stock = castToType<double>(snapshotData['stock']);
    _cartAmount = castToType<double>(snapshotData['cart_amount']);
    _clickSTeam = castToType<int>(snapshotData['click_s_team']);
    _betWin = castToType<int>(snapshotData['bet_win']);
    _totalBets = castToType<int>(snapshotData['total_bets']);
    _bests = getDataList(snapshotData['bests']);
    _fans = getDataList(snapshotData['fans']);
    _blocks = getDataList(snapshotData['blocks']);
    _numPenalities = castToType<int>(snapshotData['num_penalities']);
    _rankValue = snapshotData['rank_value'] as String?;
    _stsocialapp = snapshotData['stsocialapp'] as String?;
    _mise = castToType<double>(snapshotData['mise']);
    _divisionValue = snapshotData['division_value'] as String?;
    _moderator = snapshotData['moderator'] as DocumentReference?;
    _updateTime = snapshotData['update_time'] as DateTime?;
    _totalGains = castToType<double>(snapshotData['total_gains']);
    _totalMises = castToType<double>(snapshotData['total_mises']);
    _earningsTotal = castToType<double>(snapshotData['earnings_total']);
    _betLoose = castToType<int>(snapshotData['bet_loose']);
    _esport = snapshotData['esport'] as bool?;
    _tops = castToType<int>(snapshotData['tops']);
    _flops = castToType<int>(snapshotData['flops']);
    _totalGames = castToType<int>(snapshotData['total_games']);
    _erankValue = snapshotData['erank_value'] as String?;
    _edivisionValue = snapshotData['edivision_value'] as String?;
    _esportValue = snapshotData['esport_value'] as String?;
    _eteamRef = snapshotData['eteam_ref'] as DocumentReference?;
    _familyName = snapshotData['family_name'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _guest = snapshotData['guest'] as bool?;
    _boolMvp = snapshotData['bool_mvp'] as bool?;
    _boolTop = snapshotData['bool_top'] as bool?;
    _boolFlop = snapshotData['bool_flop'] as bool?;
    _eUpdateTime = snapshotData['e_update_time'] as DateTime?;
    _topsflops = castToType<int>(snapshotData['topsflops']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? imageFond,
  double? stock,
  double? cartAmount,
  int? clickSTeam,
  int? betWin,
  int? totalBets,
  int? numPenalities,
  String? rankValue,
  String? stsocialapp,
  double? mise,
  String? divisionValue,
  DocumentReference? moderator,
  DateTime? updateTime,
  double? totalGains,
  double? totalMises,
  double? earningsTotal,
  int? betLoose,
  bool? esport,
  int? tops,
  int? flops,
  int? totalGames,
  String? erankValue,
  String? edivisionValue,
  String? esportValue,
  DocumentReference? eteamRef,
  String? familyName,
  String? firstName,
  bool? guest,
  bool? boolMvp,
  bool? boolTop,
  bool? boolFlop,
  DateTime? eUpdateTime,
  int? topsflops,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'image_fond': imageFond,
      'stock': stock,
      'cart_amount': cartAmount,
      'click_s_team': clickSTeam,
      'bet_win': betWin,
      'total_bets': totalBets,
      'num_penalities': numPenalities,
      'rank_value': rankValue,
      'stsocialapp': stsocialapp,
      'mise': mise,
      'division_value': divisionValue,
      'moderator': moderator,
      'update_time': updateTime,
      'total_gains': totalGains,
      'total_mises': totalMises,
      'earnings_total': earningsTotal,
      'bet_loose': betLoose,
      'esport': esport,
      'tops': tops,
      'flops': flops,
      'total_games': totalGames,
      'erank_value': erankValue,
      'edivision_value': edivisionValue,
      'esport_value': esportValue,
      'eteam_ref': eteamRef,
      'family_name': familyName,
      'first_name': firstName,
      'guest': guest,
      'bool_mvp': boolMvp,
      'bool_top': boolTop,
      'bool_flop': boolFlop,
      'e_update_time': eUpdateTime,
      'topsflops': topsflops,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.imageFond == e2?.imageFond &&
        e1?.stock == e2?.stock &&
        e1?.cartAmount == e2?.cartAmount &&
        e1?.clickSTeam == e2?.clickSTeam &&
        e1?.betWin == e2?.betWin &&
        e1?.totalBets == e2?.totalBets &&
        listEquality.equals(e1?.bests, e2?.bests) &&
        listEquality.equals(e1?.fans, e2?.fans) &&
        listEquality.equals(e1?.blocks, e2?.blocks) &&
        e1?.numPenalities == e2?.numPenalities &&
        e1?.rankValue == e2?.rankValue &&
        e1?.stsocialapp == e2?.stsocialapp &&
        e1?.mise == e2?.mise &&
        e1?.divisionValue == e2?.divisionValue &&
        e1?.moderator == e2?.moderator &&
        e1?.updateTime == e2?.updateTime &&
        e1?.totalGains == e2?.totalGains &&
        e1?.totalMises == e2?.totalMises &&
        e1?.earningsTotal == e2?.earningsTotal &&
        e1?.betLoose == e2?.betLoose &&
        e1?.esport == e2?.esport &&
        e1?.tops == e2?.tops &&
        e1?.flops == e2?.flops &&
        e1?.totalGames == e2?.totalGames &&
        e1?.erankValue == e2?.erankValue &&
        e1?.edivisionValue == e2?.edivisionValue &&
        e1?.esportValue == e2?.esportValue &&
        e1?.eteamRef == e2?.eteamRef &&
        e1?.familyName == e2?.familyName &&
        e1?.firstName == e2?.firstName &&
        e1?.guest == e2?.guest &&
        e1?.boolMvp == e2?.boolMvp &&
        e1?.boolTop == e2?.boolTop &&
        e1?.boolFlop == e2?.boolFlop &&
        e1?.eUpdateTime == e2?.eUpdateTime &&
        e1?.topsflops == e2?.topsflops;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.imageFond,
        e?.stock,
        e?.cartAmount,
        e?.clickSTeam,
        e?.betWin,
        e?.totalBets,
        e?.bests,
        e?.fans,
        e?.blocks,
        e?.numPenalities,
        e?.rankValue,
        e?.stsocialapp,
        e?.mise,
        e?.divisionValue,
        e?.moderator,
        e?.updateTime,
        e?.totalGains,
        e?.totalMises,
        e?.earningsTotal,
        e?.betLoose,
        e?.esport,
        e?.tops,
        e?.flops,
        e?.totalGames,
        e?.erankValue,
        e?.edivisionValue,
        e?.esportValue,
        e?.eteamRef,
        e?.familyName,
        e?.firstName,
        e?.guest,
        e?.boolMvp,
        e?.boolTop,
        e?.boolFlop,
        e?.eUpdateTime,
        e?.topsflops
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
