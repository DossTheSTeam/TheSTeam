import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "bet" field.
  DocumentReference? _bet;
  DocumentReference? get bet => _bet;
  bool hasBet() => _bet != null;

  // "potentialy" field.
  double? _potentialy;
  double get potentialy => _potentialy ?? 0.0;
  bool hasPotentialy() => _potentialy != null;

  // "total_odds" field.
  double? _totalOdds;
  double get totalOdds => _totalOdds ?? 0.0;
  bool hasTotalOdds() => _totalOdds != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _bet = snapshotData['bet'] as DocumentReference?;
    _potentialy = castToType<double>(snapshotData['potentialy']);
    _totalOdds = castToType<double>(snapshotData['total_odds']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('cart')
          : FirebaseFirestore.instance.collectionGroup('cart');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('cart').doc(id);

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  DocumentReference? bet,
  double? potentialy,
  double? totalOdds,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bet': bet,
      'potentialy': potentialy,
      'total_odds': totalOdds,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.bet == e2?.bet &&
        e1?.potentialy == e2?.potentialy &&
        e1?.totalOdds == e2?.totalOdds;
  }

  @override
  int hash(CartRecord? e) =>
      const ListEquality().hash([e?.bet, e?.potentialy, e?.totalOdds]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
