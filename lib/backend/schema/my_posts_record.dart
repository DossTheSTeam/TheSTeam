import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyPostsRecord extends FirestoreRecord {
  MyPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date_time" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "posts" field.
  DocumentReference? _posts;
  DocumentReference? get posts => _posts;
  bool hasPosts() => _posts != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _dateTime = snapshotData['date_time'] as DateTime?;
    _posts = snapshotData['posts'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('my_posts')
          : FirebaseFirestore.instance.collectionGroup('my_posts');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('my_posts').doc(id);

  static Stream<MyPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyPostsRecord.fromSnapshot(s));

  static Future<MyPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyPostsRecord.fromSnapshot(s));

  static MyPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyPostsRecordData({
  DateTime? dateTime,
  DocumentReference? posts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date_time': dateTime,
      'posts': posts,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyPostsRecordDocumentEquality implements Equality<MyPostsRecord> {
  const MyPostsRecordDocumentEquality();

  @override
  bool equals(MyPostsRecord? e1, MyPostsRecord? e2) {
    return e1?.dateTime == e2?.dateTime && e1?.posts == e2?.posts;
  }

  @override
  int hash(MyPostsRecord? e) =>
      const ListEquality().hash([e?.dateTime, e?.posts]);

  @override
  bool isValidKey(Object? o) => o is MyPostsRecord;
}
