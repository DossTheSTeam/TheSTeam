import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "family_name" field.
  String? _familyName;
  String get familyName => _familyName ?? '';
  bool hasFamilyName() => _familyName != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "help_nav" field.
  bool? _helpNav;
  bool get helpNav => _helpNav ?? false;
  bool hasHelpNav() => _helpNav != null;

  // "admin_sport" field.
  bool? _adminSport;
  bool get adminSport => _adminSport ?? false;
  bool hasAdminSport() => _adminSport != null;

  // "admin_sportvalue" field.
  String? _adminSportvalue;
  String get adminSportvalue => _adminSportvalue ?? '';
  bool hasAdminSportvalue() => _adminSportvalue != null;

  // "color1" field.
  Color? _color1;
  Color? get color1 => _color1;
  bool hasColor1() => _color1 != null;

  // "color2" field.
  Color? _color2;
  Color? get color2 => _color2;
  bool hasColor2() => _color2 != null;

  // "testor" field.
  bool? _testor;
  bool get testor => _testor ?? false;
  bool hasTestor() => _testor != null;

  // "suspension_times" field.
  int? _suspensionTimes;
  int get suspensionTimes => _suspensionTimes ?? 0;
  bool hasSuspensionTimes() => _suspensionTimes != null;

  // "suspension_days" field.
  int? _suspensionDays;
  int get suspensionDays => _suspensionDays ?? 0;
  bool hasSuspensionDays() => _suspensionDays != null;

  // "dateof_birth" field.
  String? _dateofBirth;
  String get dateofBirth => _dateofBirth ?? '';
  bool hasDateofBirth() => _dateofBirth != null;

  // "adult" field.
  bool? _adult;
  bool get adult => _adult ?? false;
  bool hasAdult() => _adult != null;

  // "enterprise" field.
  String? _enterprise;
  String get enterprise => _enterprise ?? '';
  bool hasEnterprise() => _enterprise != null;

  // "langage" field.
  String? _langage;
  String get langage => _langage ?? '';
  bool hasLangage() => _langage != null;

  // "notifs_push" field.
  bool? _notifsPush;
  bool get notifsPush => _notifsPush ?? false;
  bool hasNotifsPush() => _notifsPush != null;

  // "cumul_betwin" field.
  int? _cumulBetwin;
  int get cumulBetwin => _cumulBetwin ?? 0;
  bool hasCumulBetwin() => _cumulBetwin != null;

  // "cumul_bets" field.
  int? _cumulBets;
  int get cumulBets => _cumulBets ?? 0;
  bool hasCumulBets() => _cumulBets != null;

  // "cumul_gains" field.
  double? _cumulGains;
  double get cumulGains => _cumulGains ?? 0.0;
  bool hasCumulGains() => _cumulGains != null;

  // "cumul_mises" field.
  double? _cumulMises;
  double get cumulMises => _cumulMises ?? 0.0;
  bool hasCumulMises() => _cumulMises != null;

  // "cumul_earnings" field.
  double? _cumulEarnings;
  double get cumulEarnings => _cumulEarnings ?? 0.0;
  bool hasCumulEarnings() => _cumulEarnings != null;

  // "bet_loose" field.
  int? _betLoose;
  int get betLoose => _betLoose ?? 0;
  bool hasBetLoose() => _betLoose != null;

  // "cumul_loose" field.
  int? _cumulLoose;
  int get cumulLoose => _cumulLoose ?? 0;
  bool hasCumulLoose() => _cumulLoose != null;

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
    _familyName = snapshotData['family_name'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _helpNav = snapshotData['help_nav'] as bool?;
    _adminSport = snapshotData['admin_sport'] as bool?;
    _adminSportvalue = snapshotData['admin_sportvalue'] as String?;
    _color1 = getSchemaColor(snapshotData['color1']);
    _color2 = getSchemaColor(snapshotData['color2']);
    _testor = snapshotData['testor'] as bool?;
    _suspensionTimes = castToType<int>(snapshotData['suspension_times']);
    _suspensionDays = castToType<int>(snapshotData['suspension_days']);
    _dateofBirth = snapshotData['dateof_birth'] as String?;
    _adult = snapshotData['adult'] as bool?;
    _enterprise = snapshotData['enterprise'] as String?;
    _langage = snapshotData['langage'] as String?;
    _notifsPush = snapshotData['notifs_push'] as bool?;
    _cumulBetwin = castToType<int>(snapshotData['cumul_betwin']);
    _cumulBets = castToType<int>(snapshotData['cumul_bets']);
    _cumulGains = castToType<double>(snapshotData['cumul_gains']);
    _cumulMises = castToType<double>(snapshotData['cumul_mises']);
    _cumulEarnings = castToType<double>(snapshotData['cumul_earnings']);
    _betLoose = castToType<int>(snapshotData['bet_loose']);
    _cumulLoose = castToType<int>(snapshotData['cumul_loose']);
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
  String? familyName,
  String? firstName,
  bool? helpNav,
  bool? adminSport,
  String? adminSportvalue,
  Color? color1,
  Color? color2,
  bool? testor,
  int? suspensionTimes,
  int? suspensionDays,
  String? dateofBirth,
  bool? adult,
  String? enterprise,
  String? langage,
  bool? notifsPush,
  int? cumulBetwin,
  int? cumulBets,
  double? cumulGains,
  double? cumulMises,
  double? cumulEarnings,
  int? betLoose,
  int? cumulLoose,
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
      'family_name': familyName,
      'first_name': firstName,
      'help_nav': helpNav,
      'admin_sport': adminSport,
      'admin_sportvalue': adminSportvalue,
      'color1': color1,
      'color2': color2,
      'testor': testor,
      'suspension_times': suspensionTimes,
      'suspension_days': suspensionDays,
      'dateof_birth': dateofBirth,
      'adult': adult,
      'enterprise': enterprise,
      'langage': langage,
      'notifs_push': notifsPush,
      'cumul_betwin': cumulBetwin,
      'cumul_bets': cumulBets,
      'cumul_gains': cumulGains,
      'cumul_mises': cumulMises,
      'cumul_earnings': cumulEarnings,
      'bet_loose': betLoose,
      'cumul_loose': cumulLoose,
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
        e1?.familyName == e2?.familyName &&
        e1?.firstName == e2?.firstName &&
        e1?.helpNav == e2?.helpNav &&
        e1?.adminSport == e2?.adminSport &&
        e1?.adminSportvalue == e2?.adminSportvalue &&
        e1?.color1 == e2?.color1 &&
        e1?.color2 == e2?.color2 &&
        e1?.testor == e2?.testor &&
        e1?.suspensionTimes == e2?.suspensionTimes &&
        e1?.suspensionDays == e2?.suspensionDays &&
        e1?.dateofBirth == e2?.dateofBirth &&
        e1?.adult == e2?.adult &&
        e1?.enterprise == e2?.enterprise &&
        e1?.langage == e2?.langage &&
        e1?.notifsPush == e2?.notifsPush &&
        e1?.cumulBetwin == e2?.cumulBetwin &&
        e1?.cumulBets == e2?.cumulBets &&
        e1?.cumulGains == e2?.cumulGains &&
        e1?.cumulMises == e2?.cumulMises &&
        e1?.cumulEarnings == e2?.cumulEarnings &&
        e1?.betLoose == e2?.betLoose &&
        e1?.cumulLoose == e2?.cumulLoose;
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
        e?.familyName,
        e?.firstName,
        e?.helpNav,
        e?.adminSport,
        e?.adminSportvalue,
        e?.color1,
        e?.color2,
        e?.testor,
        e?.suspensionTimes,
        e?.suspensionDays,
        e?.dateofBirth,
        e?.adult,
        e?.enterprise,
        e?.langage,
        e?.notifsPush,
        e?.cumulBetwin,
        e?.cumulBets,
        e?.cumulGains,
        e?.cumulMises,
        e?.cumulEarnings,
        e?.betLoose,
        e?.cumulLoose
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
