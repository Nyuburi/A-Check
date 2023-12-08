// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SchoolCollectionReference
    implements
        SchoolQuery,
        FirestoreCollectionReference<School, SchoolQuerySnapshot> {
  factory SchoolCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$SchoolCollectionReference;

  static School fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return School.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    School value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<School> get reference;

  @override
  SchoolDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SchoolDocumentReference> add(School value);
}

class _$SchoolCollectionReference extends _$SchoolQuery
    implements SchoolCollectionReference {
  factory _$SchoolCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$SchoolCollectionReference._(
      firestore.collection('schools').withConverter(
            fromFirestore: SchoolCollectionReference.fromFirestore,
            toFirestore: SchoolCollectionReference.toFirestore,
          ),
    );
  }

  _$SchoolCollectionReference._(
    CollectionReference<School> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<School> get reference =>
      super.reference as CollectionReference<School>;

  @override
  SchoolDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SchoolDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SchoolDocumentReference> add(School value) {
    return reference.add(value).then((ref) => SchoolDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SchoolCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SchoolDocumentReference
    extends FirestoreDocumentReference<School, SchoolDocumentSnapshot> {
  factory SchoolDocumentReference(DocumentReference<School> reference) =
      _$SchoolDocumentReference;

  DocumentReference<School> get reference;

  /// A reference to the [SchoolCollectionReference] containing this document.
  SchoolCollectionReference get parent {
    return _$SchoolCollectionReference(reference.firestore);
  }

  late final SchoolClassCollectionReference classes =
      _$SchoolClassCollectionReference(
    reference,
  );

  late final TeacherCollectionReference teachers = _$TeacherCollectionReference(
    reference,
  );

  late final StudentCollectionReference students = _$StudentCollectionReference(
    reference,
  );

  late final AttendanceRecordCollectionReference attendances =
      _$AttendanceRecordCollectionReference(
    reference,
  );

  @override
  Stream<SchoolDocumentSnapshot> snapshots();

  @override
  Future<SchoolDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    String officeName,
    FieldValue officeNameFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    String officeName,
    FieldValue officeNameFieldValue,
  });
}

class _$SchoolDocumentReference
    extends FirestoreDocumentReference<School, SchoolDocumentSnapshot>
    implements SchoolDocumentReference {
  _$SchoolDocumentReference(this.reference);

  @override
  final DocumentReference<School> reference;

  /// A reference to the [SchoolCollectionReference] containing this document.
  SchoolCollectionReference get parent {
    return _$SchoolCollectionReference(reference.firestore);
  }

  late final SchoolClassCollectionReference classes =
      _$SchoolClassCollectionReference(
    reference,
  );

  late final TeacherCollectionReference teachers = _$TeacherCollectionReference(
    reference,
  );

  late final StudentCollectionReference students = _$StudentCollectionReference(
    reference,
  );

  late final AttendanceRecordCollectionReference attendances =
      _$AttendanceRecordCollectionReference(
    reference,
  );

  @override
  Stream<SchoolDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SchoolDocumentSnapshot._);
  }

  @override
  Future<SchoolDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SchoolDocumentSnapshot._);
  }

  @override
  Future<SchoolDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(SchoolDocumentSnapshot._);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? officeName = _sentinel,
    FieldValue? officeNameFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      officeName == _sentinel || officeNameFieldValue == null,
      "Cannot specify both officeName and officeNameFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$SchoolFieldMap['name']!: _$SchoolPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$SchoolFieldMap['name']!: nameFieldValue,
      if (officeName != _sentinel)
        _$SchoolFieldMap['officeName']!:
            _$SchoolPerFieldToJson.officeName(officeName as String),
      if (officeNameFieldValue != null)
        _$SchoolFieldMap['officeName']!: officeNameFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? officeName = _sentinel,
    FieldValue? officeNameFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      officeName == _sentinel || officeNameFieldValue == null,
      "Cannot specify both officeName and officeNameFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$SchoolFieldMap['name']!: _$SchoolPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$SchoolFieldMap['name']!: nameFieldValue,
      if (officeName != _sentinel)
        _$SchoolFieldMap['officeName']!:
            _$SchoolPerFieldToJson.officeName(officeName as String),
      if (officeNameFieldValue != null)
        _$SchoolFieldMap['officeName']!: officeNameFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SchoolDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SchoolQuery
    implements QueryReference<School, SchoolQuerySnapshot> {
  @override
  SchoolQuery limit(int limit);

  @override
  SchoolQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  SchoolQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SchoolDocumentSnapshot? startAtDocument,
    SchoolDocumentSnapshot? endAtDocument,
    SchoolDocumentSnapshot? endBeforeDocument,
    SchoolDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  SchoolQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SchoolQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SchoolQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SchoolQuery whereOfficeName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  SchoolQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SchoolDocumentSnapshot? startAtDocument,
    SchoolDocumentSnapshot? endAtDocument,
    SchoolDocumentSnapshot? endBeforeDocument,
    SchoolDocumentSnapshot? startAfterDocument,
  });

  SchoolQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SchoolDocumentSnapshot? startAtDocument,
    SchoolDocumentSnapshot? endAtDocument,
    SchoolDocumentSnapshot? endBeforeDocument,
    SchoolDocumentSnapshot? startAfterDocument,
  });

  SchoolQuery orderByOfficeName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SchoolDocumentSnapshot? startAtDocument,
    SchoolDocumentSnapshot? endAtDocument,
    SchoolDocumentSnapshot? endBeforeDocument,
    SchoolDocumentSnapshot? startAfterDocument,
  });
}

class _$SchoolQuery extends QueryReference<School, SchoolQuerySnapshot>
    implements SchoolQuery {
  _$SchoolQuery(
    this._collection, {
    required Query<School> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SchoolQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(SchoolQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SchoolQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SchoolQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SchoolQuery limit(int limit) {
    return _$SchoolQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SchoolQuery limitToLast(int limit) {
    return _$SchoolQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  SchoolQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolDocumentSnapshot? startAtDocument,
    SchoolDocumentSnapshot? endAtDocument,
    SchoolDocumentSnapshot? endBeforeDocument,
    SchoolDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$SchoolQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SchoolQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SchoolQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SchoolQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SchoolFieldMap['name']!,
        isEqualTo:
            isEqualTo != null ? _$SchoolPerFieldToJson.name(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$SchoolPerFieldToJson.name(isNotEqualTo)
            : null,
        isLessThan:
            isLessThan != null ? _$SchoolPerFieldToJson.name(isLessThan) : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SchoolPerFieldToJson.name(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SchoolPerFieldToJson.name(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SchoolPerFieldToJson.name(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$SchoolPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$SchoolPerFieldToJson.name(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolQuery whereOfficeName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SchoolQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SchoolFieldMap['officeName']!,
        isEqualTo: isEqualTo != null
            ? _$SchoolPerFieldToJson.officeName(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$SchoolPerFieldToJson.officeName(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$SchoolPerFieldToJson.officeName(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SchoolPerFieldToJson.officeName(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SchoolPerFieldToJson.officeName(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SchoolPerFieldToJson.officeName(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$SchoolPerFieldToJson.officeName(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SchoolPerFieldToJson.officeName(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolDocumentSnapshot? startAtDocument,
    SchoolDocumentSnapshot? endAtDocument,
    SchoolDocumentSnapshot? endBeforeDocument,
    SchoolDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolDocumentSnapshot? startAtDocument,
    SchoolDocumentSnapshot? endAtDocument,
    SchoolDocumentSnapshot? endBeforeDocument,
    SchoolDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SchoolFieldMap['name']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolQuery orderByOfficeName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolDocumentSnapshot? startAtDocument,
    SchoolDocumentSnapshot? endAtDocument,
    SchoolDocumentSnapshot? endBeforeDocument,
    SchoolDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SchoolFieldMap['officeName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SchoolQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SchoolDocumentSnapshot extends FirestoreDocumentSnapshot<School> {
  SchoolDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<School> snapshot;

  @override
  SchoolDocumentReference get reference {
    return SchoolDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final School? data;
}

class SchoolQuerySnapshot
    extends FirestoreQuerySnapshot<School, SchoolQueryDocumentSnapshot> {
  SchoolQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SchoolQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<School> snapshot,
  ) {
    final docs = snapshot.docs.map(SchoolQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SchoolDocumentSnapshot._,
      );
    }).toList();

    return SchoolQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SchoolDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SchoolDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SchoolDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<School> snapshot;

  @override
  final List<SchoolQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SchoolDocumentSnapshot>> docChanges;
}

class SchoolQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<School>
    implements SchoolDocumentSnapshot {
  SchoolQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<School> snapshot;

  @override
  final School data;

  @override
  SchoolDocumentReference get reference {
    return SchoolDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SchoolClassCollectionReference
    implements
        SchoolClassQuery,
        FirestoreCollectionReference<SchoolClass, SchoolClassQuerySnapshot> {
  factory SchoolClassCollectionReference(
    DocumentReference<School> parent,
  ) = _$SchoolClassCollectionReference;

  static SchoolClass fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return SchoolClass.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    SchoolClass value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<SchoolClass> get reference;

  /// A reference to the containing [SchoolDocumentReference] if this is a subcollection.
  SchoolDocumentReference get parent;

  @override
  SchoolClassDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SchoolClassDocumentReference> add(SchoolClass value);
}

class _$SchoolClassCollectionReference extends _$SchoolClassQuery
    implements SchoolClassCollectionReference {
  factory _$SchoolClassCollectionReference(
    DocumentReference<School> parent,
  ) {
    return _$SchoolClassCollectionReference._(
      SchoolDocumentReference(parent),
      parent.collection('classes').withConverter(
            fromFirestore: SchoolClassCollectionReference.fromFirestore,
            toFirestore: SchoolClassCollectionReference.toFirestore,
          ),
    );
  }

  _$SchoolClassCollectionReference._(
    this.parent,
    CollectionReference<SchoolClass> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final SchoolDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<SchoolClass> get reference =>
      super.reference as CollectionReference<SchoolClass>;

  @override
  SchoolClassDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SchoolClassDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SchoolClassDocumentReference> add(SchoolClass value) {
    return reference
        .add(value)
        .then((ref) => SchoolClassDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SchoolClassCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SchoolClassDocumentReference extends FirestoreDocumentReference<
    SchoolClass, SchoolClassDocumentSnapshot> {
  factory SchoolClassDocumentReference(
          DocumentReference<SchoolClass> reference) =
      _$SchoolClassDocumentReference;

  DocumentReference<SchoolClass> get reference;

  /// A reference to the [SchoolClassCollectionReference] containing this document.
  SchoolClassCollectionReference get parent {
    return _$SchoolClassCollectionReference(
      reference.parent.parent!.withConverter<School>(
        fromFirestore: SchoolCollectionReference.fromFirestore,
        toFirestore: SchoolCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SchoolClassDocumentSnapshot> snapshots();

  @override
  Future<SchoolClassDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String subjectCode,
    FieldValue subjectCodeFieldValue,
    String name,
    FieldValue nameFieldValue,
    String section,
    FieldValue sectionFieldValue,
    List<ClassSchedule> schedule,
    FieldValue scheduleFieldValue,
    String teacherId,
    FieldValue teacherIdFieldValue,
    int maxAbsences,
    FieldValue maxAbsencesFieldValue,
    Set<String> studentIds,
    FieldValue studentIdsFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String subjectCode,
    FieldValue subjectCodeFieldValue,
    String name,
    FieldValue nameFieldValue,
    String section,
    FieldValue sectionFieldValue,
    List<ClassSchedule> schedule,
    FieldValue scheduleFieldValue,
    String teacherId,
    FieldValue teacherIdFieldValue,
    int maxAbsences,
    FieldValue maxAbsencesFieldValue,
    Set<String> studentIds,
    FieldValue studentIdsFieldValue,
  });
}

class _$SchoolClassDocumentReference
    extends FirestoreDocumentReference<SchoolClass, SchoolClassDocumentSnapshot>
    implements SchoolClassDocumentReference {
  _$SchoolClassDocumentReference(this.reference);

  @override
  final DocumentReference<SchoolClass> reference;

  /// A reference to the [SchoolClassCollectionReference] containing this document.
  SchoolClassCollectionReference get parent {
    return _$SchoolClassCollectionReference(
      reference.parent.parent!.withConverter<School>(
        fromFirestore: SchoolCollectionReference.fromFirestore,
        toFirestore: SchoolCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SchoolClassDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SchoolClassDocumentSnapshot._);
  }

  @override
  Future<SchoolClassDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SchoolClassDocumentSnapshot._);
  }

  @override
  Future<SchoolClassDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(SchoolClassDocumentSnapshot._);
  }

  Future<void> update({
    Object? subjectCode = _sentinel,
    FieldValue? subjectCodeFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? section = _sentinel,
    FieldValue? sectionFieldValue,
    Object? schedule = _sentinel,
    FieldValue? scheduleFieldValue,
    Object? teacherId = _sentinel,
    FieldValue? teacherIdFieldValue,
    Object? maxAbsences = _sentinel,
    FieldValue? maxAbsencesFieldValue,
    Object? studentIds = _sentinel,
    FieldValue? studentIdsFieldValue,
  }) async {
    assert(
      subjectCode == _sentinel || subjectCodeFieldValue == null,
      "Cannot specify both subjectCode and subjectCodeFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      section == _sentinel || sectionFieldValue == null,
      "Cannot specify both section and sectionFieldValue",
    );
    assert(
      schedule == _sentinel || scheduleFieldValue == null,
      "Cannot specify both schedule and scheduleFieldValue",
    );
    assert(
      teacherId == _sentinel || teacherIdFieldValue == null,
      "Cannot specify both teacherId and teacherIdFieldValue",
    );
    assert(
      maxAbsences == _sentinel || maxAbsencesFieldValue == null,
      "Cannot specify both maxAbsences and maxAbsencesFieldValue",
    );
    assert(
      studentIds == _sentinel || studentIdsFieldValue == null,
      "Cannot specify both studentIds and studentIdsFieldValue",
    );
    final json = {
      if (subjectCode != _sentinel)
        _$SchoolClassFieldMap['subjectCode']!:
            _$SchoolClassPerFieldToJson.subjectCode(subjectCode as String),
      if (subjectCodeFieldValue != null)
        _$SchoolClassFieldMap['subjectCode']!: subjectCodeFieldValue,
      if (name != _sentinel)
        _$SchoolClassFieldMap['name']!:
            _$SchoolClassPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$SchoolClassFieldMap['name']!: nameFieldValue,
      if (section != _sentinel)
        _$SchoolClassFieldMap['section']!:
            _$SchoolClassPerFieldToJson.section(section as String),
      if (sectionFieldValue != null)
        _$SchoolClassFieldMap['section']!: sectionFieldValue,
      if (schedule != _sentinel)
        _$SchoolClassFieldMap['schedule']!: _$SchoolClassPerFieldToJson
            .schedule(schedule as List<ClassSchedule>),
      if (scheduleFieldValue != null)
        _$SchoolClassFieldMap['schedule']!: scheduleFieldValue,
      if (teacherId != _sentinel)
        _$SchoolClassFieldMap['teacherId']!:
            _$SchoolClassPerFieldToJson.teacherId(teacherId as String),
      if (teacherIdFieldValue != null)
        _$SchoolClassFieldMap['teacherId']!: teacherIdFieldValue,
      if (maxAbsences != _sentinel)
        _$SchoolClassFieldMap['maxAbsences']!:
            _$SchoolClassPerFieldToJson.maxAbsences(maxAbsences as int),
      if (maxAbsencesFieldValue != null)
        _$SchoolClassFieldMap['maxAbsences']!: maxAbsencesFieldValue,
      if (studentIds != _sentinel)
        _$SchoolClassFieldMap['studentIds']!:
            _$SchoolClassPerFieldToJson.studentIds(studentIds as Set<String>),
      if (studentIdsFieldValue != null)
        _$SchoolClassFieldMap['studentIds']!: studentIdsFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? subjectCode = _sentinel,
    FieldValue? subjectCodeFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? section = _sentinel,
    FieldValue? sectionFieldValue,
    Object? schedule = _sentinel,
    FieldValue? scheduleFieldValue,
    Object? teacherId = _sentinel,
    FieldValue? teacherIdFieldValue,
    Object? maxAbsences = _sentinel,
    FieldValue? maxAbsencesFieldValue,
    Object? studentIds = _sentinel,
    FieldValue? studentIdsFieldValue,
  }) {
    assert(
      subjectCode == _sentinel || subjectCodeFieldValue == null,
      "Cannot specify both subjectCode and subjectCodeFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      section == _sentinel || sectionFieldValue == null,
      "Cannot specify both section and sectionFieldValue",
    );
    assert(
      schedule == _sentinel || scheduleFieldValue == null,
      "Cannot specify both schedule and scheduleFieldValue",
    );
    assert(
      teacherId == _sentinel || teacherIdFieldValue == null,
      "Cannot specify both teacherId and teacherIdFieldValue",
    );
    assert(
      maxAbsences == _sentinel || maxAbsencesFieldValue == null,
      "Cannot specify both maxAbsences and maxAbsencesFieldValue",
    );
    assert(
      studentIds == _sentinel || studentIdsFieldValue == null,
      "Cannot specify both studentIds and studentIdsFieldValue",
    );
    final json = {
      if (subjectCode != _sentinel)
        _$SchoolClassFieldMap['subjectCode']!:
            _$SchoolClassPerFieldToJson.subjectCode(subjectCode as String),
      if (subjectCodeFieldValue != null)
        _$SchoolClassFieldMap['subjectCode']!: subjectCodeFieldValue,
      if (name != _sentinel)
        _$SchoolClassFieldMap['name']!:
            _$SchoolClassPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$SchoolClassFieldMap['name']!: nameFieldValue,
      if (section != _sentinel)
        _$SchoolClassFieldMap['section']!:
            _$SchoolClassPerFieldToJson.section(section as String),
      if (sectionFieldValue != null)
        _$SchoolClassFieldMap['section']!: sectionFieldValue,
      if (schedule != _sentinel)
        _$SchoolClassFieldMap['schedule']!: _$SchoolClassPerFieldToJson
            .schedule(schedule as List<ClassSchedule>),
      if (scheduleFieldValue != null)
        _$SchoolClassFieldMap['schedule']!: scheduleFieldValue,
      if (teacherId != _sentinel)
        _$SchoolClassFieldMap['teacherId']!:
            _$SchoolClassPerFieldToJson.teacherId(teacherId as String),
      if (teacherIdFieldValue != null)
        _$SchoolClassFieldMap['teacherId']!: teacherIdFieldValue,
      if (maxAbsences != _sentinel)
        _$SchoolClassFieldMap['maxAbsences']!:
            _$SchoolClassPerFieldToJson.maxAbsences(maxAbsences as int),
      if (maxAbsencesFieldValue != null)
        _$SchoolClassFieldMap['maxAbsences']!: maxAbsencesFieldValue,
      if (studentIds != _sentinel)
        _$SchoolClassFieldMap['studentIds']!:
            _$SchoolClassPerFieldToJson.studentIds(studentIds as Set<String>),
      if (studentIdsFieldValue != null)
        _$SchoolClassFieldMap['studentIds']!: studentIdsFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SchoolClassDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SchoolClassQuery
    implements QueryReference<SchoolClass, SchoolClassQuerySnapshot> {
  @override
  SchoolClassQuery limit(int limit);

  @override
  SchoolClassQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  SchoolClassQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  SchoolClassQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SchoolClassQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SchoolClassQuery whereSubjectCode({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SchoolClassQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SchoolClassQuery whereSection({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SchoolClassQuery whereSchedule({
    List<ClassSchedule>? isEqualTo,
    List<ClassSchedule>? isNotEqualTo,
    List<ClassSchedule>? isLessThan,
    List<ClassSchedule>? isLessThanOrEqualTo,
    List<ClassSchedule>? isGreaterThan,
    List<ClassSchedule>? isGreaterThanOrEqualTo,
    bool? isNull,
    ClassSchedule? arrayContains,
    List<ClassSchedule>? arrayContainsAny,
  });
  SchoolClassQuery whereTeacherId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SchoolClassQuery whereMaxAbsences({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  SchoolClassQuery whereStudentIds({
    Set<String>? isEqualTo,
    Set<String>? isNotEqualTo,
    Set<String>? isLessThan,
    Set<String>? isLessThanOrEqualTo,
    Set<String>? isGreaterThan,
    Set<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    Set<String>? arrayContainsAny,
  });

  SchoolClassQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  });

  SchoolClassQuery orderBySubjectCode({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  });

  SchoolClassQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  });

  SchoolClassQuery orderBySection({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  });

  SchoolClassQuery orderBySchedule({
    bool descending = false,
    List<ClassSchedule> startAt,
    List<ClassSchedule> startAfter,
    List<ClassSchedule> endAt,
    List<ClassSchedule> endBefore,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  });

  SchoolClassQuery orderByTeacherId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  });

  SchoolClassQuery orderByMaxAbsences({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  });

  SchoolClassQuery orderByStudentIds({
    bool descending = false,
    Set<String> startAt,
    Set<String> startAfter,
    Set<String> endAt,
    Set<String> endBefore,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  });
}

class _$SchoolClassQuery
    extends QueryReference<SchoolClass, SchoolClassQuerySnapshot>
    implements SchoolClassQuery {
  _$SchoolClassQuery(
    this._collection, {
    required Query<SchoolClass> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SchoolClassQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(SchoolClassQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SchoolClassQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(SchoolClassQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SchoolClassQuery limit(int limit) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SchoolClassQuery limitToLast(int limit) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  SchoolClassQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolClassQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolClassQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolClassQuery whereSubjectCode({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SchoolClassFieldMap['subjectCode']!,
        isEqualTo: isEqualTo != null
            ? _$SchoolClassPerFieldToJson.subjectCode(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$SchoolClassPerFieldToJson.subjectCode(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$SchoolClassPerFieldToJson.subjectCode(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.subjectCode(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SchoolClassPerFieldToJson.subjectCode(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.subjectCode(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$SchoolClassPerFieldToJson.subjectCode(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SchoolClassPerFieldToJson.subjectCode(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolClassQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SchoolClassFieldMap['name']!,
        isEqualTo: isEqualTo != null
            ? _$SchoolClassPerFieldToJson.name(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$SchoolClassPerFieldToJson.name(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$SchoolClassPerFieldToJson.name(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.name(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SchoolClassPerFieldToJson.name(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.name(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$SchoolClassPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$SchoolClassPerFieldToJson.name(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolClassQuery whereSection({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SchoolClassFieldMap['section']!,
        isEqualTo: isEqualTo != null
            ? _$SchoolClassPerFieldToJson.section(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$SchoolClassPerFieldToJson.section(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$SchoolClassPerFieldToJson.section(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.section(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SchoolClassPerFieldToJson.section(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.section(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$SchoolClassPerFieldToJson.section(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SchoolClassPerFieldToJson.section(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolClassQuery whereSchedule({
    List<ClassSchedule>? isEqualTo,
    List<ClassSchedule>? isNotEqualTo,
    List<ClassSchedule>? isLessThan,
    List<ClassSchedule>? isLessThanOrEqualTo,
    List<ClassSchedule>? isGreaterThan,
    List<ClassSchedule>? isGreaterThanOrEqualTo,
    bool? isNull,
    ClassSchedule? arrayContains,
    List<ClassSchedule>? arrayContainsAny,
  }) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SchoolClassFieldMap['schedule']!,
        isEqualTo: isEqualTo != null
            ? _$SchoolClassPerFieldToJson.schedule(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$SchoolClassPerFieldToJson.schedule(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$SchoolClassPerFieldToJson.schedule(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.schedule(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SchoolClassPerFieldToJson.schedule(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.schedule(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$SchoolClassPerFieldToJson.schedule([arrayContains]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$SchoolClassPerFieldToJson.schedule(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolClassQuery whereTeacherId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SchoolClassFieldMap['teacherId']!,
        isEqualTo: isEqualTo != null
            ? _$SchoolClassPerFieldToJson.teacherId(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$SchoolClassPerFieldToJson.teacherId(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$SchoolClassPerFieldToJson.teacherId(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.teacherId(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SchoolClassPerFieldToJson.teacherId(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.teacherId(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$SchoolClassPerFieldToJson.teacherId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SchoolClassPerFieldToJson.teacherId(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolClassQuery whereMaxAbsences({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SchoolClassFieldMap['maxAbsences']!,
        isEqualTo: isEqualTo != null
            ? _$SchoolClassPerFieldToJson.maxAbsences(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$SchoolClassPerFieldToJson.maxAbsences(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$SchoolClassPerFieldToJson.maxAbsences(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.maxAbsences(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SchoolClassPerFieldToJson.maxAbsences(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.maxAbsences(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$SchoolClassPerFieldToJson.maxAbsences(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SchoolClassPerFieldToJson.maxAbsences(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolClassQuery whereStudentIds({
    Set<String>? isEqualTo,
    Set<String>? isNotEqualTo,
    Set<String>? isLessThan,
    Set<String>? isLessThanOrEqualTo,
    Set<String>? isGreaterThan,
    Set<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    Set<String>? arrayContainsAny,
  }) {
    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SchoolClassFieldMap['studentIds']!,
        isEqualTo: isEqualTo != null
            ? _$SchoolClassPerFieldToJson.studentIds(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$SchoolClassPerFieldToJson.studentIds(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$SchoolClassPerFieldToJson.studentIds(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.studentIds(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SchoolClassPerFieldToJson.studentIds(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SchoolClassPerFieldToJson.studentIds(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$SchoolClassPerFieldToJson.studentIds({arrayContains})
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$SchoolClassPerFieldToJson.studentIds(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SchoolClassQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolClassQuery orderBySubjectCode({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SchoolClassFieldMap['subjectCode']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolClassQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SchoolClassFieldMap['name']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolClassQuery orderBySection({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SchoolClassFieldMap['section']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolClassQuery orderBySchedule({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SchoolClassFieldMap['schedule']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolClassQuery orderByTeacherId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SchoolClassFieldMap['teacherId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolClassQuery orderByMaxAbsences({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SchoolClassFieldMap['maxAbsences']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SchoolClassQuery orderByStudentIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SchoolClassDocumentSnapshot? startAtDocument,
    SchoolClassDocumentSnapshot? endAtDocument,
    SchoolClassDocumentSnapshot? endBeforeDocument,
    SchoolClassDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SchoolClassFieldMap['studentIds']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SchoolClassQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SchoolClassQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SchoolClassDocumentSnapshot
    extends FirestoreDocumentSnapshot<SchoolClass> {
  SchoolClassDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<SchoolClass> snapshot;

  @override
  SchoolClassDocumentReference get reference {
    return SchoolClassDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SchoolClass? data;
}

class SchoolClassQuerySnapshot extends FirestoreQuerySnapshot<SchoolClass,
    SchoolClassQueryDocumentSnapshot> {
  SchoolClassQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SchoolClassQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<SchoolClass> snapshot,
  ) {
    final docs = snapshot.docs.map(SchoolClassQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SchoolClassDocumentSnapshot._,
      );
    }).toList();

    return SchoolClassQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SchoolClassDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SchoolClassDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SchoolClassDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<SchoolClass> snapshot;

  @override
  final List<SchoolClassQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SchoolClassDocumentSnapshot>> docChanges;
}

class SchoolClassQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SchoolClass>
    implements SchoolClassDocumentSnapshot {
  SchoolClassQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<SchoolClass> snapshot;

  @override
  final SchoolClass data;

  @override
  SchoolClassDocumentReference get reference {
    return SchoolClassDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class TeacherCollectionReference
    implements
        TeacherQuery,
        FirestoreCollectionReference<Teacher, TeacherQuerySnapshot> {
  factory TeacherCollectionReference(
    DocumentReference<School> parent,
  ) = _$TeacherCollectionReference;

  static Teacher fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Teacher.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Teacher value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Teacher> get reference;

  /// A reference to the containing [SchoolDocumentReference] if this is a subcollection.
  SchoolDocumentReference get parent;

  @override
  TeacherDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<TeacherDocumentReference> add(Teacher value);
}

class _$TeacherCollectionReference extends _$TeacherQuery
    implements TeacherCollectionReference {
  factory _$TeacherCollectionReference(
    DocumentReference<School> parent,
  ) {
    return _$TeacherCollectionReference._(
      SchoolDocumentReference(parent),
      parent.collection('teachers').withConverter(
            fromFirestore: TeacherCollectionReference.fromFirestore,
            toFirestore: TeacherCollectionReference.toFirestore,
          ),
    );
  }

  _$TeacherCollectionReference._(
    this.parent,
    CollectionReference<Teacher> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final SchoolDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Teacher> get reference =>
      super.reference as CollectionReference<Teacher>;

  @override
  TeacherDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return TeacherDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<TeacherDocumentReference> add(Teacher value) {
    return reference.add(value).then((ref) => TeacherDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$TeacherCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class TeacherDocumentReference
    extends FirestoreDocumentReference<Teacher, TeacherDocumentSnapshot> {
  factory TeacherDocumentReference(DocumentReference<Teacher> reference) =
      _$TeacherDocumentReference;

  DocumentReference<Teacher> get reference;

  /// A reference to the [TeacherCollectionReference] containing this document.
  TeacherCollectionReference get parent {
    return _$TeacherCollectionReference(
      reference.parent.parent!.withConverter<School>(
        fromFirestore: SchoolCollectionReference.fromFirestore,
        toFirestore: SchoolCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<TeacherDocumentSnapshot> snapshots();

  @override
  Future<TeacherDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String photoPath,
    FieldValue photoPathFieldValue,
    String firstName,
    FieldValue firstNameFieldValue,
    String middleName,
    FieldValue middleNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String? email,
    FieldValue emailFieldValue,
    String? phoneNumber,
    FieldValue phoneNumberFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String photoPath,
    FieldValue photoPathFieldValue,
    String firstName,
    FieldValue firstNameFieldValue,
    String middleName,
    FieldValue middleNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String? email,
    FieldValue emailFieldValue,
    String? phoneNumber,
    FieldValue phoneNumberFieldValue,
  });
}

class _$TeacherDocumentReference
    extends FirestoreDocumentReference<Teacher, TeacherDocumentSnapshot>
    implements TeacherDocumentReference {
  _$TeacherDocumentReference(this.reference);

  @override
  final DocumentReference<Teacher> reference;

  /// A reference to the [TeacherCollectionReference] containing this document.
  TeacherCollectionReference get parent {
    return _$TeacherCollectionReference(
      reference.parent.parent!.withConverter<School>(
        fromFirestore: SchoolCollectionReference.fromFirestore,
        toFirestore: SchoolCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<TeacherDocumentSnapshot> snapshots() {
    return reference.snapshots().map(TeacherDocumentSnapshot._);
  }

  @override
  Future<TeacherDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TeacherDocumentSnapshot._);
  }

  @override
  Future<TeacherDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(TeacherDocumentSnapshot._);
  }

  Future<void> update({
    Object? photoPath = _sentinel,
    FieldValue? photoPathFieldValue,
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? middleName = _sentinel,
    FieldValue? middleNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? phoneNumber = _sentinel,
    FieldValue? phoneNumberFieldValue,
  }) async {
    assert(
      photoPath == _sentinel || photoPathFieldValue == null,
      "Cannot specify both photoPath and photoPathFieldValue",
    );
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      middleName == _sentinel || middleNameFieldValue == null,
      "Cannot specify both middleName and middleNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      phoneNumber == _sentinel || phoneNumberFieldValue == null,
      "Cannot specify both phoneNumber and phoneNumberFieldValue",
    );
    final json = {
      if (photoPath != _sentinel)
        _$TeacherFieldMap['photoPath']!:
            _$TeacherPerFieldToJson.photoPath(photoPath as String),
      if (photoPathFieldValue != null)
        _$TeacherFieldMap['photoPath']!: photoPathFieldValue,
      if (firstName != _sentinel)
        _$TeacherFieldMap['firstName']!:
            _$TeacherPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$TeacherFieldMap['firstName']!: firstNameFieldValue,
      if (middleName != _sentinel)
        _$TeacherFieldMap['middleName']!:
            _$TeacherPerFieldToJson.middleName(middleName as String),
      if (middleNameFieldValue != null)
        _$TeacherFieldMap['middleName']!: middleNameFieldValue,
      if (lastName != _sentinel)
        _$TeacherFieldMap['lastName']!:
            _$TeacherPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$TeacherFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$TeacherFieldMap['email']!:
            _$TeacherPerFieldToJson.email(email as String?),
      if (emailFieldValue != null) _$TeacherFieldMap['email']!: emailFieldValue,
      if (phoneNumber != _sentinel)
        _$TeacherFieldMap['phoneNumber']!:
            _$TeacherPerFieldToJson.phoneNumber(phoneNumber as String?),
      if (phoneNumberFieldValue != null)
        _$TeacherFieldMap['phoneNumber']!: phoneNumberFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? photoPath = _sentinel,
    FieldValue? photoPathFieldValue,
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? middleName = _sentinel,
    FieldValue? middleNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? phoneNumber = _sentinel,
    FieldValue? phoneNumberFieldValue,
  }) {
    assert(
      photoPath == _sentinel || photoPathFieldValue == null,
      "Cannot specify both photoPath and photoPathFieldValue",
    );
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      middleName == _sentinel || middleNameFieldValue == null,
      "Cannot specify both middleName and middleNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      phoneNumber == _sentinel || phoneNumberFieldValue == null,
      "Cannot specify both phoneNumber and phoneNumberFieldValue",
    );
    final json = {
      if (photoPath != _sentinel)
        _$TeacherFieldMap['photoPath']!:
            _$TeacherPerFieldToJson.photoPath(photoPath as String),
      if (photoPathFieldValue != null)
        _$TeacherFieldMap['photoPath']!: photoPathFieldValue,
      if (firstName != _sentinel)
        _$TeacherFieldMap['firstName']!:
            _$TeacherPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$TeacherFieldMap['firstName']!: firstNameFieldValue,
      if (middleName != _sentinel)
        _$TeacherFieldMap['middleName']!:
            _$TeacherPerFieldToJson.middleName(middleName as String),
      if (middleNameFieldValue != null)
        _$TeacherFieldMap['middleName']!: middleNameFieldValue,
      if (lastName != _sentinel)
        _$TeacherFieldMap['lastName']!:
            _$TeacherPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$TeacherFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$TeacherFieldMap['email']!:
            _$TeacherPerFieldToJson.email(email as String?),
      if (emailFieldValue != null) _$TeacherFieldMap['email']!: emailFieldValue,
      if (phoneNumber != _sentinel)
        _$TeacherFieldMap['phoneNumber']!:
            _$TeacherPerFieldToJson.phoneNumber(phoneNumber as String?),
      if (phoneNumberFieldValue != null)
        _$TeacherFieldMap['phoneNumber']!: phoneNumberFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is TeacherDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class TeacherQuery
    implements QueryReference<Teacher, TeacherQuerySnapshot> {
  @override
  TeacherQuery limit(int limit);

  @override
  TeacherQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  TeacherQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  TeacherQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  TeacherQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  TeacherQuery wherePhotoPath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  TeacherQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  TeacherQuery whereMiddleName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  TeacherQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  TeacherQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  TeacherQuery wherePhoneNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });

  TeacherQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  });

  TeacherQuery orderByPhotoPath({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  });

  TeacherQuery orderByFirstName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  });

  TeacherQuery orderByMiddleName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  });

  TeacherQuery orderByLastName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  });

  TeacherQuery orderByEmail({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  });

  TeacherQuery orderByPhoneNumber({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  });
}

class _$TeacherQuery extends QueryReference<Teacher, TeacherQuerySnapshot>
    implements TeacherQuery {
  _$TeacherQuery(
    this._collection, {
    required Query<Teacher> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<TeacherQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(TeacherQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<TeacherQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TeacherQuerySnapshot._fromQuerySnapshot);
  }

  @override
  TeacherQuery limit(int limit) {
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TeacherQuery limitToLast(int limit) {
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  TeacherQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TeacherQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  TeacherQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  TeacherQuery wherePhotoPath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeacherFieldMap['photoPath']!,
        isEqualTo: isEqualTo != null
            ? _$TeacherPerFieldToJson.photoPath(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$TeacherPerFieldToJson.photoPath(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$TeacherPerFieldToJson.photoPath(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.photoPath(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeacherPerFieldToJson.photoPath(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.photoPath(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$TeacherPerFieldToJson.photoPath(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$TeacherPerFieldToJson.photoPath(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  TeacherQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeacherFieldMap['firstName']!,
        isEqualTo: isEqualTo != null
            ? _$TeacherPerFieldToJson.firstName(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$TeacherPerFieldToJson.firstName(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$TeacherPerFieldToJson.firstName(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.firstName(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeacherPerFieldToJson.firstName(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.firstName(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$TeacherPerFieldToJson.firstName(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$TeacherPerFieldToJson.firstName(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  TeacherQuery whereMiddleName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeacherFieldMap['middleName']!,
        isEqualTo: isEqualTo != null
            ? _$TeacherPerFieldToJson.middleName(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$TeacherPerFieldToJson.middleName(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$TeacherPerFieldToJson.middleName(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.middleName(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeacherPerFieldToJson.middleName(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.middleName(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$TeacherPerFieldToJson.middleName(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$TeacherPerFieldToJson.middleName(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  TeacherQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeacherFieldMap['lastName']!,
        isEqualTo: isEqualTo != null
            ? _$TeacherPerFieldToJson.lastName(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$TeacherPerFieldToJson.lastName(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$TeacherPerFieldToJson.lastName(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.lastName(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeacherPerFieldToJson.lastName(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.lastName(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$TeacherPerFieldToJson.lastName(e)),
        whereNotIn: whereNotIn?.map((e) => _$TeacherPerFieldToJson.lastName(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  TeacherQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeacherFieldMap['email']!,
        isEqualTo:
            isEqualTo != null ? _$TeacherPerFieldToJson.email(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$TeacherPerFieldToJson.email(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$TeacherPerFieldToJson.email(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.email(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeacherPerFieldToJson.email(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.email(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$TeacherPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$TeacherPerFieldToJson.email(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  TeacherQuery wherePhoneNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeacherFieldMap['phoneNumber']!,
        isEqualTo: isEqualTo != null
            ? _$TeacherPerFieldToJson.phoneNumber(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$TeacherPerFieldToJson.phoneNumber(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$TeacherPerFieldToJson.phoneNumber(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.phoneNumber(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeacherPerFieldToJson.phoneNumber(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeacherPerFieldToJson.phoneNumber(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$TeacherPerFieldToJson.phoneNumber(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$TeacherPerFieldToJson.phoneNumber(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  TeacherQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TeacherQuery orderByPhotoPath({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TeacherFieldMap['photoPath']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TeacherQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TeacherFieldMap['firstName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TeacherQuery orderByMiddleName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TeacherFieldMap['middleName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TeacherQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TeacherFieldMap['lastName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TeacherQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TeacherFieldMap['email']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TeacherQuery orderByPhoneNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeacherDocumentSnapshot? startAtDocument,
    TeacherDocumentSnapshot? endAtDocument,
    TeacherDocumentSnapshot? endBeforeDocument,
    TeacherDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TeacherFieldMap['phoneNumber']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeacherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$TeacherQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class TeacherDocumentSnapshot extends FirestoreDocumentSnapshot<Teacher> {
  TeacherDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Teacher> snapshot;

  @override
  TeacherDocumentReference get reference {
    return TeacherDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Teacher? data;
}

class TeacherQuerySnapshot
    extends FirestoreQuerySnapshot<Teacher, TeacherQueryDocumentSnapshot> {
  TeacherQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory TeacherQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Teacher> snapshot,
  ) {
    final docs = snapshot.docs.map(TeacherQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        TeacherDocumentSnapshot._,
      );
    }).toList();

    return TeacherQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<TeacherDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    TeacherDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<TeacherDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Teacher> snapshot;

  @override
  final List<TeacherQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<TeacherDocumentSnapshot>> docChanges;
}

class TeacherQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Teacher>
    implements TeacherDocumentSnapshot {
  TeacherQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Teacher> snapshot;

  @override
  final Teacher data;

  @override
  TeacherDocumentReference get reference {
    return TeacherDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class StudentCollectionReference
    implements
        StudentQuery,
        FirestoreCollectionReference<Student, StudentQuerySnapshot> {
  factory StudentCollectionReference(
    DocumentReference<School> parent,
  ) = _$StudentCollectionReference;

  static Student fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Student.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Student value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Student> get reference;

  /// A reference to the containing [SchoolDocumentReference] if this is a subcollection.
  SchoolDocumentReference get parent;

  @override
  StudentDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<StudentDocumentReference> add(Student value);
}

class _$StudentCollectionReference extends _$StudentQuery
    implements StudentCollectionReference {
  factory _$StudentCollectionReference(
    DocumentReference<School> parent,
  ) {
    return _$StudentCollectionReference._(
      SchoolDocumentReference(parent),
      parent.collection('students').withConverter(
            fromFirestore: StudentCollectionReference.fromFirestore,
            toFirestore: StudentCollectionReference.toFirestore,
          ),
    );
  }

  _$StudentCollectionReference._(
    this.parent,
    CollectionReference<Student> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final SchoolDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Student> get reference =>
      super.reference as CollectionReference<Student>;

  @override
  StudentDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return StudentDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<StudentDocumentReference> add(Student value) {
    return reference.add(value).then((ref) => StudentDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$StudentCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class StudentDocumentReference
    extends FirestoreDocumentReference<Student, StudentDocumentSnapshot> {
  factory StudentDocumentReference(DocumentReference<Student> reference) =
      _$StudentDocumentReference;

  DocumentReference<Student> get reference;

  /// A reference to the [StudentCollectionReference] containing this document.
  StudentCollectionReference get parent {
    return _$StudentCollectionReference(
      reference.parent.parent!.withConverter<School>(
        fromFirestore: SchoolCollectionReference.fromFirestore,
        toFirestore: SchoolCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<StudentDocumentSnapshot> snapshots();

  @override
  Future<StudentDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String photoPath,
    FieldValue photoPathFieldValue,
    List<String> guardianIds,
    FieldValue guardianIdsFieldValue,
    List<dynamic> faceArray,
    FieldValue faceArrayFieldValue,
    String firstName,
    FieldValue firstNameFieldValue,
    String middleName,
    FieldValue middleNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String? email,
    FieldValue emailFieldValue,
    String? phoneNumber,
    FieldValue phoneNumberFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String photoPath,
    FieldValue photoPathFieldValue,
    List<String> guardianIds,
    FieldValue guardianIdsFieldValue,
    List<dynamic> faceArray,
    FieldValue faceArrayFieldValue,
    String firstName,
    FieldValue firstNameFieldValue,
    String middleName,
    FieldValue middleNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String? email,
    FieldValue emailFieldValue,
    String? phoneNumber,
    FieldValue phoneNumberFieldValue,
  });
}

class _$StudentDocumentReference
    extends FirestoreDocumentReference<Student, StudentDocumentSnapshot>
    implements StudentDocumentReference {
  _$StudentDocumentReference(this.reference);

  @override
  final DocumentReference<Student> reference;

  /// A reference to the [StudentCollectionReference] containing this document.
  StudentCollectionReference get parent {
    return _$StudentCollectionReference(
      reference.parent.parent!.withConverter<School>(
        fromFirestore: SchoolCollectionReference.fromFirestore,
        toFirestore: SchoolCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<StudentDocumentSnapshot> snapshots() {
    return reference.snapshots().map(StudentDocumentSnapshot._);
  }

  @override
  Future<StudentDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(StudentDocumentSnapshot._);
  }

  @override
  Future<StudentDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(StudentDocumentSnapshot._);
  }

  Future<void> update({
    Object? photoPath = _sentinel,
    FieldValue? photoPathFieldValue,
    Object? guardianIds = _sentinel,
    FieldValue? guardianIdsFieldValue,
    Object? faceArray = _sentinel,
    FieldValue? faceArrayFieldValue,
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? middleName = _sentinel,
    FieldValue? middleNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? phoneNumber = _sentinel,
    FieldValue? phoneNumberFieldValue,
  }) async {
    assert(
      photoPath == _sentinel || photoPathFieldValue == null,
      "Cannot specify both photoPath and photoPathFieldValue",
    );
    assert(
      guardianIds == _sentinel || guardianIdsFieldValue == null,
      "Cannot specify both guardianIds and guardianIdsFieldValue",
    );
    assert(
      faceArray == _sentinel || faceArrayFieldValue == null,
      "Cannot specify both faceArray and faceArrayFieldValue",
    );
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      middleName == _sentinel || middleNameFieldValue == null,
      "Cannot specify both middleName and middleNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      phoneNumber == _sentinel || phoneNumberFieldValue == null,
      "Cannot specify both phoneNumber and phoneNumberFieldValue",
    );
    final json = {
      if (photoPath != _sentinel)
        _$StudentFieldMap['photoPath']!:
            _$StudentPerFieldToJson.photoPath(photoPath as String),
      if (photoPathFieldValue != null)
        _$StudentFieldMap['photoPath']!: photoPathFieldValue,
      if (guardianIds != _sentinel)
        _$StudentFieldMap['guardianIds']!:
            _$StudentPerFieldToJson.guardianIds(guardianIds as List<String>),
      if (guardianIdsFieldValue != null)
        _$StudentFieldMap['guardianIds']!: guardianIdsFieldValue,
      if (faceArray != _sentinel)
        _$StudentFieldMap['faceArray']!:
            _$StudentPerFieldToJson.faceArray(faceArray as List<dynamic>),
      if (faceArrayFieldValue != null)
        _$StudentFieldMap['faceArray']!: faceArrayFieldValue,
      if (firstName != _sentinel)
        _$StudentFieldMap['firstName']!:
            _$StudentPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$StudentFieldMap['firstName']!: firstNameFieldValue,
      if (middleName != _sentinel)
        _$StudentFieldMap['middleName']!:
            _$StudentPerFieldToJson.middleName(middleName as String),
      if (middleNameFieldValue != null)
        _$StudentFieldMap['middleName']!: middleNameFieldValue,
      if (lastName != _sentinel)
        _$StudentFieldMap['lastName']!:
            _$StudentPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$StudentFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$StudentFieldMap['email']!:
            _$StudentPerFieldToJson.email(email as String?),
      if (emailFieldValue != null) _$StudentFieldMap['email']!: emailFieldValue,
      if (phoneNumber != _sentinel)
        _$StudentFieldMap['phoneNumber']!:
            _$StudentPerFieldToJson.phoneNumber(phoneNumber as String?),
      if (phoneNumberFieldValue != null)
        _$StudentFieldMap['phoneNumber']!: phoneNumberFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? photoPath = _sentinel,
    FieldValue? photoPathFieldValue,
    Object? guardianIds = _sentinel,
    FieldValue? guardianIdsFieldValue,
    Object? faceArray = _sentinel,
    FieldValue? faceArrayFieldValue,
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? middleName = _sentinel,
    FieldValue? middleNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? phoneNumber = _sentinel,
    FieldValue? phoneNumberFieldValue,
  }) {
    assert(
      photoPath == _sentinel || photoPathFieldValue == null,
      "Cannot specify both photoPath and photoPathFieldValue",
    );
    assert(
      guardianIds == _sentinel || guardianIdsFieldValue == null,
      "Cannot specify both guardianIds and guardianIdsFieldValue",
    );
    assert(
      faceArray == _sentinel || faceArrayFieldValue == null,
      "Cannot specify both faceArray and faceArrayFieldValue",
    );
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      middleName == _sentinel || middleNameFieldValue == null,
      "Cannot specify both middleName and middleNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      phoneNumber == _sentinel || phoneNumberFieldValue == null,
      "Cannot specify both phoneNumber and phoneNumberFieldValue",
    );
    final json = {
      if (photoPath != _sentinel)
        _$StudentFieldMap['photoPath']!:
            _$StudentPerFieldToJson.photoPath(photoPath as String),
      if (photoPathFieldValue != null)
        _$StudentFieldMap['photoPath']!: photoPathFieldValue,
      if (guardianIds != _sentinel)
        _$StudentFieldMap['guardianIds']!:
            _$StudentPerFieldToJson.guardianIds(guardianIds as List<String>),
      if (guardianIdsFieldValue != null)
        _$StudentFieldMap['guardianIds']!: guardianIdsFieldValue,
      if (faceArray != _sentinel)
        _$StudentFieldMap['faceArray']!:
            _$StudentPerFieldToJson.faceArray(faceArray as List<dynamic>),
      if (faceArrayFieldValue != null)
        _$StudentFieldMap['faceArray']!: faceArrayFieldValue,
      if (firstName != _sentinel)
        _$StudentFieldMap['firstName']!:
            _$StudentPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$StudentFieldMap['firstName']!: firstNameFieldValue,
      if (middleName != _sentinel)
        _$StudentFieldMap['middleName']!:
            _$StudentPerFieldToJson.middleName(middleName as String),
      if (middleNameFieldValue != null)
        _$StudentFieldMap['middleName']!: middleNameFieldValue,
      if (lastName != _sentinel)
        _$StudentFieldMap['lastName']!:
            _$StudentPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$StudentFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$StudentFieldMap['email']!:
            _$StudentPerFieldToJson.email(email as String?),
      if (emailFieldValue != null) _$StudentFieldMap['email']!: emailFieldValue,
      if (phoneNumber != _sentinel)
        _$StudentFieldMap['phoneNumber']!:
            _$StudentPerFieldToJson.phoneNumber(phoneNumber as String?),
      if (phoneNumberFieldValue != null)
        _$StudentFieldMap['phoneNumber']!: phoneNumberFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is StudentDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class StudentQuery
    implements QueryReference<Student, StudentQuerySnapshot> {
  @override
  StudentQuery limit(int limit);

  @override
  StudentQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  StudentQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  StudentQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  StudentQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  StudentQuery wherePhotoPath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  StudentQuery whereGuardianIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });
  StudentQuery whereFaceArray({
    List<dynamic>? isEqualTo,
    List<dynamic>? isNotEqualTo,
    List<dynamic>? isLessThan,
    List<dynamic>? isLessThanOrEqualTo,
    List<dynamic>? isGreaterThan,
    List<dynamic>? isGreaterThanOrEqualTo,
    bool? isNull,
    dynamic arrayContains,
    List<dynamic>? arrayContainsAny,
  });
  StudentQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  StudentQuery whereMiddleName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  StudentQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  StudentQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  StudentQuery wherePhoneNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });

  StudentQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  });

  StudentQuery orderByPhotoPath({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  });

  StudentQuery orderByGuardianIds({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  });

  StudentQuery orderByFaceArray({
    bool descending = false,
    List<dynamic> startAt,
    List<dynamic> startAfter,
    List<dynamic> endAt,
    List<dynamic> endBefore,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  });

  StudentQuery orderByFirstName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  });

  StudentQuery orderByMiddleName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  });

  StudentQuery orderByLastName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  });

  StudentQuery orderByEmail({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  });

  StudentQuery orderByPhoneNumber({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  });
}

class _$StudentQuery extends QueryReference<Student, StudentQuerySnapshot>
    implements StudentQuery {
  _$StudentQuery(
    this._collection, {
    required Query<Student> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<StudentQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(StudentQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<StudentQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(StudentQuerySnapshot._fromQuerySnapshot);
  }

  @override
  StudentQuery limit(int limit) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  StudentQuery limitToLast(int limit) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  StudentQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery wherePhotoPath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$StudentFieldMap['photoPath']!,
        isEqualTo: isEqualTo != null
            ? _$StudentPerFieldToJson.photoPath(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$StudentPerFieldToJson.photoPath(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$StudentPerFieldToJson.photoPath(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$StudentPerFieldToJson.photoPath(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$StudentPerFieldToJson.photoPath(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$StudentPerFieldToJson.photoPath(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$StudentPerFieldToJson.photoPath(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$StudentPerFieldToJson.photoPath(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery whereGuardianIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  }) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$StudentFieldMap['guardianIds']!,
        isEqualTo: isEqualTo != null
            ? _$StudentPerFieldToJson.guardianIds(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$StudentPerFieldToJson.guardianIds(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$StudentPerFieldToJson.guardianIds(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$StudentPerFieldToJson.guardianIds(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$StudentPerFieldToJson.guardianIds(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$StudentPerFieldToJson.guardianIds(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$StudentPerFieldToJson.guardianIds([arrayContains]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$StudentPerFieldToJson.guardianIds(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery whereFaceArray({
    List<dynamic>? isEqualTo,
    List<dynamic>? isNotEqualTo,
    List<dynamic>? isLessThan,
    List<dynamic>? isLessThanOrEqualTo,
    List<dynamic>? isGreaterThan,
    List<dynamic>? isGreaterThanOrEqualTo,
    bool? isNull,
    dynamic arrayContains,
    List<dynamic>? arrayContainsAny,
  }) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$StudentFieldMap['faceArray']!,
        isEqualTo: isEqualTo != null
            ? _$StudentPerFieldToJson.faceArray(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$StudentPerFieldToJson.faceArray(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$StudentPerFieldToJson.faceArray(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$StudentPerFieldToJson.faceArray(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$StudentPerFieldToJson.faceArray(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$StudentPerFieldToJson.faceArray(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$StudentPerFieldToJson.faceArray([arrayContains]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$StudentPerFieldToJson.faceArray(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$StudentFieldMap['firstName']!,
        isEqualTo: isEqualTo != null
            ? _$StudentPerFieldToJson.firstName(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$StudentPerFieldToJson.firstName(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$StudentPerFieldToJson.firstName(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$StudentPerFieldToJson.firstName(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$StudentPerFieldToJson.firstName(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$StudentPerFieldToJson.firstName(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$StudentPerFieldToJson.firstName(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$StudentPerFieldToJson.firstName(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery whereMiddleName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$StudentFieldMap['middleName']!,
        isEqualTo: isEqualTo != null
            ? _$StudentPerFieldToJson.middleName(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$StudentPerFieldToJson.middleName(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$StudentPerFieldToJson.middleName(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$StudentPerFieldToJson.middleName(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$StudentPerFieldToJson.middleName(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$StudentPerFieldToJson.middleName(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$StudentPerFieldToJson.middleName(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$StudentPerFieldToJson.middleName(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$StudentFieldMap['lastName']!,
        isEqualTo: isEqualTo != null
            ? _$StudentPerFieldToJson.lastName(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$StudentPerFieldToJson.lastName(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$StudentPerFieldToJson.lastName(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$StudentPerFieldToJson.lastName(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$StudentPerFieldToJson.lastName(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$StudentPerFieldToJson.lastName(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$StudentPerFieldToJson.lastName(e)),
        whereNotIn: whereNotIn?.map((e) => _$StudentPerFieldToJson.lastName(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$StudentFieldMap['email']!,
        isEqualTo:
            isEqualTo != null ? _$StudentPerFieldToJson.email(isEqualTo) : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$StudentPerFieldToJson.email(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$StudentPerFieldToJson.email(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$StudentPerFieldToJson.email(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$StudentPerFieldToJson.email(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$StudentPerFieldToJson.email(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$StudentPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$StudentPerFieldToJson.email(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery wherePhoneNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$StudentFieldMap['phoneNumber']!,
        isEqualTo: isEqualTo != null
            ? _$StudentPerFieldToJson.phoneNumber(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$StudentPerFieldToJson.phoneNumber(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$StudentPerFieldToJson.phoneNumber(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$StudentPerFieldToJson.phoneNumber(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$StudentPerFieldToJson.phoneNumber(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$StudentPerFieldToJson.phoneNumber(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$StudentPerFieldToJson.phoneNumber(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$StudentPerFieldToJson.phoneNumber(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  StudentQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  StudentQuery orderByPhotoPath({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$StudentFieldMap['photoPath']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  StudentQuery orderByGuardianIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$StudentFieldMap['guardianIds']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  StudentQuery orderByFaceArray({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$StudentFieldMap['faceArray']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  StudentQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$StudentFieldMap['firstName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  StudentQuery orderByMiddleName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$StudentFieldMap['middleName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  StudentQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$StudentFieldMap['lastName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  StudentQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$StudentFieldMap['email']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  StudentQuery orderByPhoneNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    StudentDocumentSnapshot? startAtDocument,
    StudentDocumentSnapshot? endAtDocument,
    StudentDocumentSnapshot? endBeforeDocument,
    StudentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$StudentFieldMap['phoneNumber']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$StudentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$StudentQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class StudentDocumentSnapshot extends FirestoreDocumentSnapshot<Student> {
  StudentDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Student> snapshot;

  @override
  StudentDocumentReference get reference {
    return StudentDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Student? data;
}

class StudentQuerySnapshot
    extends FirestoreQuerySnapshot<Student, StudentQueryDocumentSnapshot> {
  StudentQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory StudentQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Student> snapshot,
  ) {
    final docs = snapshot.docs.map(StudentQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        StudentDocumentSnapshot._,
      );
    }).toList();

    return StudentQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<StudentDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    StudentDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<StudentDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Student> snapshot;

  @override
  final List<StudentQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<StudentDocumentSnapshot>> docChanges;
}

class StudentQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Student>
    implements StudentDocumentSnapshot {
  StudentQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Student> snapshot;

  @override
  final Student data;

  @override
  StudentDocumentReference get reference {
    return StudentDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class AttendanceRecordCollectionReference
    implements
        AttendanceRecordQuery,
        FirestoreCollectionReference<AttendanceRecord,
            AttendanceRecordQuerySnapshot> {
  factory AttendanceRecordCollectionReference(
    DocumentReference<School> parent,
  ) = _$AttendanceRecordCollectionReference;

  static AttendanceRecord fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return AttendanceRecord.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    AttendanceRecord value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<AttendanceRecord> get reference;

  /// A reference to the containing [SchoolDocumentReference] if this is a subcollection.
  SchoolDocumentReference get parent;

  @override
  AttendanceRecordDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AttendanceRecordDocumentReference> add(AttendanceRecord value);
}

class _$AttendanceRecordCollectionReference extends _$AttendanceRecordQuery
    implements AttendanceRecordCollectionReference {
  factory _$AttendanceRecordCollectionReference(
    DocumentReference<School> parent,
  ) {
    return _$AttendanceRecordCollectionReference._(
      SchoolDocumentReference(parent),
      parent.collection('attendances').withConverter(
            fromFirestore: AttendanceRecordCollectionReference.fromFirestore,
            toFirestore: AttendanceRecordCollectionReference.toFirestore,
          ),
    );
  }

  _$AttendanceRecordCollectionReference._(
    this.parent,
    CollectionReference<AttendanceRecord> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final SchoolDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<AttendanceRecord> get reference =>
      super.reference as CollectionReference<AttendanceRecord>;

  @override
  AttendanceRecordDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AttendanceRecordDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<AttendanceRecordDocumentReference> add(AttendanceRecord value) {
    return reference
        .add(value)
        .then((ref) => AttendanceRecordDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AttendanceRecordCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AttendanceRecordDocumentReference
    extends FirestoreDocumentReference<AttendanceRecord,
        AttendanceRecordDocumentSnapshot> {
  factory AttendanceRecordDocumentReference(
          DocumentReference<AttendanceRecord> reference) =
      _$AttendanceRecordDocumentReference;

  DocumentReference<AttendanceRecord> get reference;

  /// A reference to the [AttendanceRecordCollectionReference] containing this document.
  AttendanceRecordCollectionReference get parent {
    return _$AttendanceRecordCollectionReference(
      reference.parent.parent!.withConverter<School>(
        fromFirestore: SchoolCollectionReference.fromFirestore,
        toFirestore: SchoolCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AttendanceRecordDocumentSnapshot> snapshots();

  @override
  Future<AttendanceRecordDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String studentId,
    FieldValue studentIdFieldValue,
    String classId,
    FieldValue classIdFieldValue,
    DateTime dateTime,
    FieldValue dateTimeFieldValue,
    AttendanceStatus status,
    FieldValue statusFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String studentId,
    FieldValue studentIdFieldValue,
    String classId,
    FieldValue classIdFieldValue,
    DateTime dateTime,
    FieldValue dateTimeFieldValue,
    AttendanceStatus status,
    FieldValue statusFieldValue,
  });
}

class _$AttendanceRecordDocumentReference extends FirestoreDocumentReference<
        AttendanceRecord, AttendanceRecordDocumentSnapshot>
    implements AttendanceRecordDocumentReference {
  _$AttendanceRecordDocumentReference(this.reference);

  @override
  final DocumentReference<AttendanceRecord> reference;

  /// A reference to the [AttendanceRecordCollectionReference] containing this document.
  AttendanceRecordCollectionReference get parent {
    return _$AttendanceRecordCollectionReference(
      reference.parent.parent!.withConverter<School>(
        fromFirestore: SchoolCollectionReference.fromFirestore,
        toFirestore: SchoolCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AttendanceRecordDocumentSnapshot> snapshots() {
    return reference.snapshots().map(AttendanceRecordDocumentSnapshot._);
  }

  @override
  Future<AttendanceRecordDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AttendanceRecordDocumentSnapshot._);
  }

  @override
  Future<AttendanceRecordDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(AttendanceRecordDocumentSnapshot._);
  }

  Future<void> update({
    Object? studentId = _sentinel,
    FieldValue? studentIdFieldValue,
    Object? classId = _sentinel,
    FieldValue? classIdFieldValue,
    Object? dateTime = _sentinel,
    FieldValue? dateTimeFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
  }) async {
    assert(
      studentId == _sentinel || studentIdFieldValue == null,
      "Cannot specify both studentId and studentIdFieldValue",
    );
    assert(
      classId == _sentinel || classIdFieldValue == null,
      "Cannot specify both classId and classIdFieldValue",
    );
    assert(
      dateTime == _sentinel || dateTimeFieldValue == null,
      "Cannot specify both dateTime and dateTimeFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    final json = {
      if (studentId != _sentinel)
        _$AttendanceRecordFieldMap['studentId']!:
            _$AttendanceRecordPerFieldToJson.studentId(studentId as String),
      if (studentIdFieldValue != null)
        _$AttendanceRecordFieldMap['studentId']!: studentIdFieldValue,
      if (classId != _sentinel)
        _$AttendanceRecordFieldMap['classId']!:
            _$AttendanceRecordPerFieldToJson.classId(classId as String),
      if (classIdFieldValue != null)
        _$AttendanceRecordFieldMap['classId']!: classIdFieldValue,
      if (dateTime != _sentinel)
        _$AttendanceRecordFieldMap['dateTime']!:
            _$AttendanceRecordPerFieldToJson.dateTime(dateTime as DateTime),
      if (dateTimeFieldValue != null)
        _$AttendanceRecordFieldMap['dateTime']!: dateTimeFieldValue,
      if (status != _sentinel)
        _$AttendanceRecordFieldMap['status']!:
            _$AttendanceRecordPerFieldToJson.status(status as AttendanceStatus),
      if (statusFieldValue != null)
        _$AttendanceRecordFieldMap['status']!: statusFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? studentId = _sentinel,
    FieldValue? studentIdFieldValue,
    Object? classId = _sentinel,
    FieldValue? classIdFieldValue,
    Object? dateTime = _sentinel,
    FieldValue? dateTimeFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
  }) {
    assert(
      studentId == _sentinel || studentIdFieldValue == null,
      "Cannot specify both studentId and studentIdFieldValue",
    );
    assert(
      classId == _sentinel || classIdFieldValue == null,
      "Cannot specify both classId and classIdFieldValue",
    );
    assert(
      dateTime == _sentinel || dateTimeFieldValue == null,
      "Cannot specify both dateTime and dateTimeFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    final json = {
      if (studentId != _sentinel)
        _$AttendanceRecordFieldMap['studentId']!:
            _$AttendanceRecordPerFieldToJson.studentId(studentId as String),
      if (studentIdFieldValue != null)
        _$AttendanceRecordFieldMap['studentId']!: studentIdFieldValue,
      if (classId != _sentinel)
        _$AttendanceRecordFieldMap['classId']!:
            _$AttendanceRecordPerFieldToJson.classId(classId as String),
      if (classIdFieldValue != null)
        _$AttendanceRecordFieldMap['classId']!: classIdFieldValue,
      if (dateTime != _sentinel)
        _$AttendanceRecordFieldMap['dateTime']!:
            _$AttendanceRecordPerFieldToJson.dateTime(dateTime as DateTime),
      if (dateTimeFieldValue != null)
        _$AttendanceRecordFieldMap['dateTime']!: dateTimeFieldValue,
      if (status != _sentinel)
        _$AttendanceRecordFieldMap['status']!:
            _$AttendanceRecordPerFieldToJson.status(status as AttendanceStatus),
      if (statusFieldValue != null)
        _$AttendanceRecordFieldMap['status']!: statusFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is AttendanceRecordDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class AttendanceRecordQuery
    implements QueryReference<AttendanceRecord, AttendanceRecordQuerySnapshot> {
  @override
  AttendanceRecordQuery limit(int limit);

  @override
  AttendanceRecordQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  AttendanceRecordQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  AttendanceRecordQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  AttendanceRecordQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  AttendanceRecordQuery whereStudentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  AttendanceRecordQuery whereClassId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  AttendanceRecordQuery whereDateTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  });
  AttendanceRecordQuery whereStatus({
    AttendanceStatus? isEqualTo,
    AttendanceStatus? isNotEqualTo,
    AttendanceStatus? isLessThan,
    AttendanceStatus? isLessThanOrEqualTo,
    AttendanceStatus? isGreaterThan,
    AttendanceStatus? isGreaterThanOrEqualTo,
    bool? isNull,
    List<AttendanceStatus>? whereIn,
    List<AttendanceStatus>? whereNotIn,
  });

  AttendanceRecordQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  });

  AttendanceRecordQuery orderByStudentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  });

  AttendanceRecordQuery orderByClassId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  });

  AttendanceRecordQuery orderByDateTime({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  });

  AttendanceRecordQuery orderByStatus({
    bool descending = false,
    AttendanceStatus startAt,
    AttendanceStatus startAfter,
    AttendanceStatus endAt,
    AttendanceStatus endBefore,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  });
}

class _$AttendanceRecordQuery
    extends QueryReference<AttendanceRecord, AttendanceRecordQuerySnapshot>
    implements AttendanceRecordQuery {
  _$AttendanceRecordQuery(
    this._collection, {
    required Query<AttendanceRecord> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<AttendanceRecordQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(AttendanceRecordQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<AttendanceRecordQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(AttendanceRecordQuerySnapshot._fromQuerySnapshot);
  }

  @override
  AttendanceRecordQuery limit(int limit) {
    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AttendanceRecordQuery limitToLast(int limit) {
    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  AttendanceRecordQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AttendanceRecordQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AttendanceRecordQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AttendanceRecordQuery whereStudentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AttendanceRecordFieldMap['studentId']!,
        isEqualTo: isEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.studentId(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.studentId(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$AttendanceRecordPerFieldToJson.studentId(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.studentId(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AttendanceRecordPerFieldToJson.studentId(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.studentId(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$AttendanceRecordPerFieldToJson.studentId(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$AttendanceRecordPerFieldToJson.studentId(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  AttendanceRecordQuery whereClassId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AttendanceRecordFieldMap['classId']!,
        isEqualTo: isEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.classId(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.classId(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$AttendanceRecordPerFieldToJson.classId(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.classId(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AttendanceRecordPerFieldToJson.classId(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.classId(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$AttendanceRecordPerFieldToJson.classId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AttendanceRecordPerFieldToJson.classId(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  AttendanceRecordQuery whereDateTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AttendanceRecordFieldMap['dateTime']!,
        isEqualTo: isEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.dateTime(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.dateTime(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$AttendanceRecordPerFieldToJson.dateTime(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.dateTime(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AttendanceRecordPerFieldToJson.dateTime(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.dateTime(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$AttendanceRecordPerFieldToJson.dateTime(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$AttendanceRecordPerFieldToJson.dateTime(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  AttendanceRecordQuery whereStatus({
    AttendanceStatus? isEqualTo,
    AttendanceStatus? isNotEqualTo,
    AttendanceStatus? isLessThan,
    AttendanceStatus? isLessThanOrEqualTo,
    AttendanceStatus? isGreaterThan,
    AttendanceStatus? isGreaterThanOrEqualTo,
    bool? isNull,
    List<AttendanceStatus>? whereIn,
    List<AttendanceStatus>? whereNotIn,
  }) {
    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AttendanceRecordFieldMap['status']!,
        isEqualTo: isEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.status(isEqualTo)
            : null,
        isNotEqualTo: isNotEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.status(isNotEqualTo)
            : null,
        isLessThan: isLessThan != null
            ? _$AttendanceRecordPerFieldToJson.status(isLessThan)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.status(isLessThanOrEqualTo)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AttendanceRecordPerFieldToJson.status(isGreaterThan)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AttendanceRecordPerFieldToJson.status(isGreaterThanOrEqualTo)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$AttendanceRecordPerFieldToJson.status(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AttendanceRecordPerFieldToJson.status(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  AttendanceRecordQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AttendanceRecordQuery orderByStudentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AttendanceRecordFieldMap['studentId']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AttendanceRecordQuery orderByClassId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AttendanceRecordFieldMap['classId']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AttendanceRecordQuery orderByDateTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AttendanceRecordFieldMap['dateTime']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AttendanceRecordQuery orderByStatus({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AttendanceRecordDocumentSnapshot? startAtDocument,
    AttendanceRecordDocumentSnapshot? endAtDocument,
    AttendanceRecordDocumentSnapshot? endBeforeDocument,
    AttendanceRecordDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AttendanceRecordFieldMap['status']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AttendanceRecordQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$AttendanceRecordQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AttendanceRecordDocumentSnapshot
    extends FirestoreDocumentSnapshot<AttendanceRecord> {
  AttendanceRecordDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<AttendanceRecord> snapshot;

  @override
  AttendanceRecordDocumentReference get reference {
    return AttendanceRecordDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final AttendanceRecord? data;
}

class AttendanceRecordQuerySnapshot extends FirestoreQuerySnapshot<
    AttendanceRecord, AttendanceRecordQueryDocumentSnapshot> {
  AttendanceRecordQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory AttendanceRecordQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<AttendanceRecord> snapshot,
  ) {
    final docs =
        snapshot.docs.map(AttendanceRecordQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        AttendanceRecordDocumentSnapshot._,
      );
    }).toList();

    return AttendanceRecordQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<AttendanceRecordDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    AttendanceRecordDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<AttendanceRecordDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<AttendanceRecord> snapshot;

  @override
  final List<AttendanceRecordQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AttendanceRecordDocumentSnapshot>>
      docChanges;
}

class AttendanceRecordQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<AttendanceRecord>
    implements AttendanceRecordDocumentSnapshot {
  AttendanceRecordQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<AttendanceRecord> snapshot;

  @override
  final AttendanceRecord data;

  @override
  AttendanceRecordDocumentReference get reference {
    return AttendanceRecordDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

School _$SchoolFromJson(Map<String, dynamic> json) => School(
      id: json['id'] as String,
      name: json['name'] as String,
      officeName: json['officeName'] as String,
    );

const _$SchoolFieldMap = <String, String>{
  'name': 'name',
  'officeName': 'officeName',
  'id': 'id',
};

// ignore: unused_element
abstract class _$SchoolPerFieldToJson {
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? officeName(String instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
}

Map<String, dynamic> _$SchoolToJson(School instance) => <String, dynamic>{
      'name': instance.name,
      'officeName': instance.officeName,
      'id': instance.id,
    };

Student _$StudentFromJson(Map<String, dynamic> json) => Student(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      guardianIds: (json['guardianIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      faceArray: json['faceArray'] as List<dynamic>?,
      photoPath: json['photoPath'] as String?,
    );

const _$StudentFieldMap = <String, String>{
  'firstName': 'firstName',
  'middleName': 'middleName',
  'lastName': 'lastName',
  'email': 'email',
  'phoneNumber': 'phoneNumber',
  'id': 'id',
  'photoPath': 'photoPath',
  'guardianIds': 'guardianIds',
  'faceArray': 'faceArray',
};

// ignore: unused_element
abstract class _$StudentPerFieldToJson {
  // ignore: unused_element
  static Object? firstName(String instance) => instance;
  // ignore: unused_element
  static Object? middleName(String instance) => instance;
  // ignore: unused_element
  static Object? lastName(String instance) => instance;
  // ignore: unused_element
  static Object? email(String? instance) => instance;
  // ignore: unused_element
  static Object? phoneNumber(String? instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? photoPath(String instance) => instance;
  // ignore: unused_element
  static Object? guardianIds(List<String> instance) => instance;
  // ignore: unused_element
  static Object? faceArray(List<dynamic> instance) => instance;
}

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'id': instance.id,
      'photoPath': instance.photoPath,
      'guardianIds': instance.guardianIds,
      'faceArray': instance.faceArray,
    };

Teacher _$TeacherFromJson(Map<String, dynamic> json) => Teacher(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      photoPath: json['photoPath'] as String?,
    );

const _$TeacherFieldMap = <String, String>{
  'firstName': 'firstName',
  'middleName': 'middleName',
  'lastName': 'lastName',
  'email': 'email',
  'phoneNumber': 'phoneNumber',
  'id': 'id',
  'photoPath': 'photoPath',
};

// ignore: unused_element
abstract class _$TeacherPerFieldToJson {
  // ignore: unused_element
  static Object? firstName(String instance) => instance;
  // ignore: unused_element
  static Object? middleName(String instance) => instance;
  // ignore: unused_element
  static Object? lastName(String instance) => instance;
  // ignore: unused_element
  static Object? email(String? instance) => instance;
  // ignore: unused_element
  static Object? phoneNumber(String? instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? photoPath(String instance) => instance;
}

Map<String, dynamic> _$TeacherToJson(Teacher instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'id': instance.id,
      'photoPath': instance.photoPath,
    };

SchoolClass _$SchoolClassFromJson(Map<String, dynamic> json) => SchoolClass(
      id: json['id'] as String,
      subjectCode: json['subjectCode'] as String,
      name: json['name'] as String,
      section: json['section'] as String,
      schedule: (json['schedule'] as List<dynamic>)
          .map((e) => ClassSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      teacherId: json['teacherId'] as String,
      studentIds: (json['studentIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
      maxAbsences: json['maxAbsences'] as int?,
    );

const _$SchoolClassFieldMap = <String, String>{
  'id': 'id',
  'subjectCode': 'subjectCode',
  'name': 'name',
  'section': 'section',
  'schedule': 'schedule',
  'teacherId': 'teacherId',
  'maxAbsences': 'maxAbsences',
  'studentIds': 'studentIds',
};

// ignore: unused_element
abstract class _$SchoolClassPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? subjectCode(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? section(String instance) => instance;
  // ignore: unused_element
  static Object? schedule(List<ClassSchedule> instance) =>
      instance.map((e) => e.toJson()).toList();
  // ignore: unused_element
  static Object? teacherId(String instance) => instance;
  // ignore: unused_element
  static Object? maxAbsences(int instance) => instance;
  // ignore: unused_element
  static Object? studentIds(Set<String> instance) => instance.toList();
}

Map<String, dynamic> _$SchoolClassToJson(SchoolClass instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subjectCode': instance.subjectCode,
      'name': instance.name,
      'section': instance.section,
      'schedule': instance.schedule.map((e) => e.toJson()).toList(),
      'teacherId': instance.teacherId,
      'maxAbsences': instance.maxAbsences,
      'studentIds': instance.studentIds.toList(),
    };

ClassSchedule _$ClassScheduleFromJson(Map<String, dynamic> json) =>
    ClassSchedule(
      weekday: json['weekday'] as int,
      startTimeHour: json['startTimeHour'] as int,
      startTimeMinute: json['startTimeMinute'] as int,
      endTimeHour: json['endTimeHour'] as int,
      endTimeMinute: json['endTimeMinute'] as int,
    );

const _$ClassScheduleFieldMap = <String, String>{
  'weekday': 'weekday',
  'startTimeHour': 'startTimeHour',
  'startTimeMinute': 'startTimeMinute',
  'endTimeHour': 'endTimeHour',
  'endTimeMinute': 'endTimeMinute',
};

// ignore: unused_element
abstract class _$ClassSchedulePerFieldToJson {
  // ignore: unused_element
  static Object? weekday(int instance) => instance;
  // ignore: unused_element
  static Object? startTimeHour(int instance) => instance;
  // ignore: unused_element
  static Object? startTimeMinute(int instance) => instance;
  // ignore: unused_element
  static Object? endTimeHour(int instance) => instance;
  // ignore: unused_element
  static Object? endTimeMinute(int instance) => instance;
}

Map<String, dynamic> _$ClassScheduleToJson(ClassSchedule instance) =>
    <String, dynamic>{
      'weekday': instance.weekday,
      'startTimeHour': instance.startTimeHour,
      'startTimeMinute': instance.startTimeMinute,
      'endTimeHour': instance.endTimeHour,
      'endTimeMinute': instance.endTimeMinute,
    };

AttendanceRecord _$AttendanceRecordFromJson(Map<String, dynamic> json) =>
    AttendanceRecord(
      id: json['id'] as String,
      studentId: json['studentId'] as String,
      classId: json['classId'] as String,
      dateTime: const FirestoreDateTimeConverter()
          .fromJson(json['dateTime'] as Timestamp),
      status: $enumDecodeNullable(_$AttendanceStatusEnumMap, json['status']),
    );

const _$AttendanceRecordFieldMap = <String, String>{
  'id': 'id',
  'studentId': 'studentId',
  'classId': 'classId',
  'dateTime': 'dateTime',
  'status': 'status',
};

// ignore: unused_element
abstract class _$AttendanceRecordPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? studentId(String instance) => instance;
  // ignore: unused_element
  static Object? classId(String instance) => instance;
  // ignore: unused_element
  static Object? dateTime(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? status(AttendanceStatus instance) =>
      _$AttendanceStatusEnumMap[instance]!;
}

Map<String, dynamic> _$AttendanceRecordToJson(AttendanceRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'classId': instance.classId,
      'dateTime': const FirestoreDateTimeConverter().toJson(instance.dateTime),
      'status': _$AttendanceStatusEnumMap[instance.status]!,
    };

const _$AttendanceStatusEnumMap = {
  AttendanceStatus.unknown: -1,
  AttendanceStatus.Absent: 0,
  AttendanceStatus.Present: 1,
  AttendanceStatus.Late: 2,
  AttendanceStatus.Excused: 3,
};
