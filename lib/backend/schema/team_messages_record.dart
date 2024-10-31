import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamMessagesRecord extends FirestoreRecord {
  TeamMessagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "date_time" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  // "e_event" field.
  DocumentReference? _eEvent;
  DocumentReference? get eEvent => _eEvent;
  bool hasEEvent() => _eEvent != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _dateTime = snapshotData['date_time'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _audio = snapshotData['audio'] as String?;
    _eEvent = snapshotData['e_event'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('team_messages')
          : FirebaseFirestore.instance.collectionGroup('team_messages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('team_messages').doc(id);

  static Stream<TeamMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamMessagesRecord.fromSnapshot(s));

  static Future<TeamMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamMessagesRecord.fromSnapshot(s));

  static TeamMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeamMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamMessagesRecordData({
  String? text,
  DocumentReference? userRef,
  DateTime? dateTime,
  String? image,
  String? audio,
  DocumentReference? eEvent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'user_ref': userRef,
      'date_time': dateTime,
      'image': image,
      'audio': audio,
      'e_event': eEvent,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamMessagesRecordDocumentEquality
    implements Equality<TeamMessagesRecord> {
  const TeamMessagesRecordDocumentEquality();

  @override
  bool equals(TeamMessagesRecord? e1, TeamMessagesRecord? e2) {
    return e1?.text == e2?.text &&
        e1?.userRef == e2?.userRef &&
        e1?.dateTime == e2?.dateTime &&
        e1?.image == e2?.image &&
        e1?.audio == e2?.audio &&
        e1?.eEvent == e2?.eEvent;
  }

  @override
  int hash(TeamMessagesRecord? e) => const ListEquality()
      .hash([e?.text, e?.userRef, e?.dateTime, e?.image, e?.audio, e?.eEvent]);

  @override
  bool isValidKey(Object? o) => o is TeamMessagesRecord;
}
