// Mocks generated by Mockito 5.4.4 from annotations
// in technicaltestpragma/test/Mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:firebase_core/firebase_core.dart' as _i3;
import 'package:firebase_database/firebase_database.dart' as _i4;
import 'package:firebase_database_platform_interface/firebase_database_platform_interface.dart'
    as _i9;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i2;
import 'package:technicaltestpragma/push_notifications/send_notification.dart'
    as _i7;
import 'package:technicaltestpragma/utils/use_sharedpreferences.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSharedPreferences_0 extends _i1.SmartFake
    implements _i2.SharedPreferences {
  _FakeSharedPreferences_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFirebaseApp_1 extends _i1.SmartFake implements _i3.FirebaseApp {
  _FakeFirebaseApp_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseReference_2 extends _i1.SmartFake
    implements _i4.DatabaseReference {
  _FakeDatabaseReference_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDataSnapshot_3 extends _i1.SmartFake implements _i4.DataSnapshot {
  _FakeDataSnapshot_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransactionResult_4 extends _i1.SmartFake
    implements _i4.TransactionResult {
  _FakeTransactionResult_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeOnDisconnect_5 extends _i1.SmartFake implements _i4.OnDisconnect {
  _FakeOnDisconnect_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseEvent_6 extends _i1.SmartFake implements _i4.DatabaseEvent {
  _FakeDatabaseEvent_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeQuery_7 extends _i1.SmartFake implements _i4.Query {
  _FakeQuery_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UseSharedPreference].
///
/// See the documentation for Mockito's code generation for more information.
class MockUseSharedPreference extends _i1.Mock
    implements _i5.UseSharedPreference {
  MockUseSharedPreference() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.SharedPreferences get sharedPreferences => (super.noSuchMethod(
        Invocation.getter(#sharedPreferences),
        returnValue: _FakeSharedPreferences_0(
          this,
          Invocation.getter(#sharedPreferences),
        ),
      ) as _i2.SharedPreferences);

  @override
  set sharedPreferences(_i2.SharedPreferences? _sharedPreferences) =>
      super.noSuchMethod(
        Invocation.setter(
          #sharedPreferences,
          _sharedPreferences,
        ),
        returnValueForMissingStub: null,
      );

  @override
  void saveLike(String? catId) => super.noSuchMethod(
        Invocation.method(
          #saveLike,
          [catId],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void quiteLike(String? catId) => super.noSuchMethod(
        Invocation.method(
          #quiteLike,
          [catId],
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool? getLikeSaved(String? catId) => (super.noSuchMethod(Invocation.method(
        #getLikeSaved,
        [catId],
      )) as bool?);
}

/// A class which mocks [FirebaseDatabase].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseDatabase extends _i1.Mock implements _i4.FirebaseDatabase {
  MockFirebaseDatabase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.FirebaseApp get app => (super.noSuchMethod(
        Invocation.getter(#app),
        returnValue: _FakeFirebaseApp_1(
          this,
          Invocation.getter(#app),
        ),
      ) as _i3.FirebaseApp);

  @override
  set app(_i3.FirebaseApp? _app) => super.noSuchMethod(
        Invocation.setter(
          #app,
          _app,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set databaseURL(String? _databaseURL) => super.noSuchMethod(
        Invocation.setter(
          #databaseURL,
          _databaseURL,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Map<dynamic, dynamic> get pluginConstants => (super.noSuchMethod(
        Invocation.getter(#pluginConstants),
        returnValue: <dynamic, dynamic>{},
      ) as Map<dynamic, dynamic>);

  @override
  void useDatabaseEmulator(
    String? host,
    int? port, {
    bool? automaticHostMapping = true,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #useDatabaseEmulator,
          [
            host,
            port,
          ],
          {#automaticHostMapping: automaticHostMapping},
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.DatabaseReference reference() => (super.noSuchMethod(
        Invocation.method(
          #reference,
          [],
        ),
        returnValue: _FakeDatabaseReference_2(
          this,
          Invocation.method(
            #reference,
            [],
          ),
        ),
      ) as _i4.DatabaseReference);

  @override
  _i4.DatabaseReference ref([String? path]) => (super.noSuchMethod(
        Invocation.method(
          #ref,
          [path],
        ),
        returnValue: _FakeDatabaseReference_2(
          this,
          Invocation.method(
            #ref,
            [path],
          ),
        ),
      ) as _i4.DatabaseReference);

  @override
  _i4.DatabaseReference refFromURL(String? url) => (super.noSuchMethod(
        Invocation.method(
          #refFromURL,
          [url],
        ),
        returnValue: _FakeDatabaseReference_2(
          this,
          Invocation.method(
            #refFromURL,
            [url],
          ),
        ),
      ) as _i4.DatabaseReference);

  @override
  void setPersistenceEnabled(bool? enabled) => super.noSuchMethod(
        Invocation.method(
          #setPersistenceEnabled,
          [enabled],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setPersistenceCacheSizeBytes(int? cacheSize) => super.noSuchMethod(
        Invocation.method(
          #setPersistenceCacheSizeBytes,
          [cacheSize],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setLoggingEnabled(bool? enabled) => super.noSuchMethod(
        Invocation.method(
          #setLoggingEnabled,
          [enabled],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<void> goOnline() => (super.noSuchMethod(
        Invocation.method(
          #goOnline,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> goOffline() => (super.noSuchMethod(
        Invocation.method(
          #goOffline,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> purgeOutstandingWrites() => (super.noSuchMethod(
        Invocation.method(
          #purgeOutstandingWrites,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [SendNotification].
///
/// See the documentation for Mockito's code generation for more information.
class MockSendNotification extends _i1.Mock implements _i7.SendNotification {
  MockSendNotification() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.SharedPreferences get sharedPreferences => (super.noSuchMethod(
        Invocation.getter(#sharedPreferences),
        returnValue: _FakeSharedPreferences_0(
          this,
          Invocation.getter(#sharedPreferences),
        ),
      ) as _i2.SharedPreferences);

  @override
  set sharedPreferences(_i2.SharedPreferences? _sharedPreferences) =>
      super.noSuchMethod(
        Invocation.setter(
          #sharedPreferences,
          _sharedPreferences,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<bool> sendLikeNotification(String? catBreed) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendLikeNotification,
          [catBreed],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [DataSnapshot].
///
/// See the documentation for Mockito's code generation for more information.
class MockDataSnapshot extends _i1.Mock implements _i4.DataSnapshot {
  MockDataSnapshot() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.DatabaseReference get ref => (super.noSuchMethod(
        Invocation.getter(#ref),
        returnValue: _FakeDatabaseReference_2(
          this,
          Invocation.getter(#ref),
        ),
      ) as _i4.DatabaseReference);

  @override
  bool get exists => (super.noSuchMethod(
        Invocation.getter(#exists),
        returnValue: false,
      ) as bool);

  @override
  Iterable<_i4.DataSnapshot> get children => (super.noSuchMethod(
        Invocation.getter(#children),
        returnValue: <_i4.DataSnapshot>[],
      ) as Iterable<_i4.DataSnapshot>);

  @override
  bool hasChild(String? path) => (super.noSuchMethod(
        Invocation.method(
          #hasChild,
          [path],
        ),
        returnValue: false,
      ) as bool);

  @override
  _i4.DataSnapshot child(String? path) => (super.noSuchMethod(
        Invocation.method(
          #child,
          [path],
        ),
        returnValue: _FakeDataSnapshot_3(
          this,
          Invocation.method(
            #child,
            [path],
          ),
        ),
      ) as _i4.DataSnapshot);
}

/// A class which mocks [DatabaseReference].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseReference extends _i1.Mock implements _i4.DatabaseReference {
  MockDatabaseReference() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.DatabaseReference get root => (super.noSuchMethod(
        Invocation.getter(#root),
        returnValue: _FakeDatabaseReference_2(
          this,
          Invocation.getter(#root),
        ),
      ) as _i4.DatabaseReference);

  @override
  _i4.DatabaseReference get ref => (super.noSuchMethod(
        Invocation.getter(#ref),
        returnValue: _FakeDatabaseReference_2(
          this,
          Invocation.getter(#ref),
        ),
      ) as _i4.DatabaseReference);

  @override
  String get path => (super.noSuchMethod(
        Invocation.getter(#path),
        returnValue: _i8.dummyValue<String>(
          this,
          Invocation.getter(#path),
        ),
      ) as String);

  @override
  _i6.Stream<_i4.DatabaseEvent> get onChildAdded => (super.noSuchMethod(
        Invocation.getter(#onChildAdded),
        returnValue: _i6.Stream<_i4.DatabaseEvent>.empty(),
      ) as _i6.Stream<_i4.DatabaseEvent>);

  @override
  _i6.Stream<_i4.DatabaseEvent> get onChildRemoved => (super.noSuchMethod(
        Invocation.getter(#onChildRemoved),
        returnValue: _i6.Stream<_i4.DatabaseEvent>.empty(),
      ) as _i6.Stream<_i4.DatabaseEvent>);

  @override
  _i6.Stream<_i4.DatabaseEvent> get onChildChanged => (super.noSuchMethod(
        Invocation.getter(#onChildChanged),
        returnValue: _i6.Stream<_i4.DatabaseEvent>.empty(),
      ) as _i6.Stream<_i4.DatabaseEvent>);

  @override
  _i6.Stream<_i4.DatabaseEvent> get onChildMoved => (super.noSuchMethod(
        Invocation.getter(#onChildMoved),
        returnValue: _i6.Stream<_i4.DatabaseEvent>.empty(),
      ) as _i6.Stream<_i4.DatabaseEvent>);

  @override
  _i6.Stream<_i4.DatabaseEvent> get onValue => (super.noSuchMethod(
        Invocation.getter(#onValue),
        returnValue: _i6.Stream<_i4.DatabaseEvent>.empty(),
      ) as _i6.Stream<_i4.DatabaseEvent>);

  @override
  _i4.DatabaseReference child(String? path) => (super.noSuchMethod(
        Invocation.method(
          #child,
          [path],
        ),
        returnValue: _FakeDatabaseReference_2(
          this,
          Invocation.method(
            #child,
            [path],
          ),
        ),
      ) as _i4.DatabaseReference);

  @override
  _i4.DatabaseReference push() => (super.noSuchMethod(
        Invocation.method(
          #push,
          [],
        ),
        returnValue: _FakeDatabaseReference_2(
          this,
          Invocation.method(
            #push,
            [],
          ),
        ),
      ) as _i4.DatabaseReference);

  @override
  _i6.Future<void> set(Object? value) => (super.noSuchMethod(
        Invocation.method(
          #set,
          [value],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setWithPriority(
    Object? value,
    Object? priority,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setWithPriority,
          [
            value,
            priority,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> update(Map<String, Object?>? value) => (super.noSuchMethod(
        Invocation.method(
          #update,
          [value],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setPriority(Object? priority) => (super.noSuchMethod(
        Invocation.method(
          #setPriority,
          [priority],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> remove() => (super.noSuchMethod(
        Invocation.method(
          #remove,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<_i4.TransactionResult> runTransaction(
    _i9.TransactionHandler? transactionHandler, {
    bool? applyLocally = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #runTransaction,
          [transactionHandler],
          {#applyLocally: applyLocally},
        ),
        returnValue:
            _i6.Future<_i4.TransactionResult>.value(_FakeTransactionResult_4(
          this,
          Invocation.method(
            #runTransaction,
            [transactionHandler],
            {#applyLocally: applyLocally},
          ),
        )),
      ) as _i6.Future<_i4.TransactionResult>);

  @override
  _i4.OnDisconnect onDisconnect() => (super.noSuchMethod(
        Invocation.method(
          #onDisconnect,
          [],
        ),
        returnValue: _FakeOnDisconnect_5(
          this,
          Invocation.method(
            #onDisconnect,
            [],
          ),
        ),
      ) as _i4.OnDisconnect);

  @override
  _i6.Future<_i4.DataSnapshot> get() => (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
        ),
        returnValue: _i6.Future<_i4.DataSnapshot>.value(_FakeDataSnapshot_3(
          this,
          Invocation.method(
            #get,
            [],
          ),
        )),
      ) as _i6.Future<_i4.DataSnapshot>);

  @override
  _i6.Future<_i4.DatabaseEvent> once(
          [_i9.DatabaseEventType? eventType = _i9.DatabaseEventType.value]) =>
      (super.noSuchMethod(
        Invocation.method(
          #once,
          [eventType],
        ),
        returnValue: _i6.Future<_i4.DatabaseEvent>.value(_FakeDatabaseEvent_6(
          this,
          Invocation.method(
            #once,
            [eventType],
          ),
        )),
      ) as _i6.Future<_i4.DatabaseEvent>);

  @override
  _i4.Query startAt(
    Object? value, {
    String? key,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #startAt,
          [value],
          {#key: key},
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #startAt,
            [value],
            {#key: key},
          ),
        ),
      ) as _i4.Query);

  @override
  _i4.Query startAfter(
    Object? value, {
    String? key,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #startAfter,
          [value],
          {#key: key},
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #startAfter,
            [value],
            {#key: key},
          ),
        ),
      ) as _i4.Query);

  @override
  _i4.Query endAt(
    Object? value, {
    String? key,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #endAt,
          [value],
          {#key: key},
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #endAt,
            [value],
            {#key: key},
          ),
        ),
      ) as _i4.Query);

  @override
  _i4.Query endBefore(
    Object? value, {
    String? key,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #endBefore,
          [value],
          {#key: key},
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #endBefore,
            [value],
            {#key: key},
          ),
        ),
      ) as _i4.Query);

  @override
  _i4.Query equalTo(
    Object? value, {
    String? key,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #equalTo,
          [value],
          {#key: key},
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #equalTo,
            [value],
            {#key: key},
          ),
        ),
      ) as _i4.Query);

  @override
  _i4.Query limitToFirst(int? limit) => (super.noSuchMethod(
        Invocation.method(
          #limitToFirst,
          [limit],
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #limitToFirst,
            [limit],
          ),
        ),
      ) as _i4.Query);

  @override
  _i4.Query limitToLast(int? limit) => (super.noSuchMethod(
        Invocation.method(
          #limitToLast,
          [limit],
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #limitToLast,
            [limit],
          ),
        ),
      ) as _i4.Query);

  @override
  _i4.Query orderByChild(String? path) => (super.noSuchMethod(
        Invocation.method(
          #orderByChild,
          [path],
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #orderByChild,
            [path],
          ),
        ),
      ) as _i4.Query);

  @override
  _i4.Query orderByKey() => (super.noSuchMethod(
        Invocation.method(
          #orderByKey,
          [],
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #orderByKey,
            [],
          ),
        ),
      ) as _i4.Query);

  @override
  _i4.Query orderByValue() => (super.noSuchMethod(
        Invocation.method(
          #orderByValue,
          [],
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #orderByValue,
            [],
          ),
        ),
      ) as _i4.Query);

  @override
  _i4.Query orderByPriority() => (super.noSuchMethod(
        Invocation.method(
          #orderByPriority,
          [],
        ),
        returnValue: _FakeQuery_7(
          this,
          Invocation.method(
            #orderByPriority,
            [],
          ),
        ),
      ) as _i4.Query);

  @override
  _i6.Future<void> keepSynced(bool? value) => (super.noSuchMethod(
        Invocation.method(
          #keepSynced,
          [value],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [DatabaseEvent].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseEvent extends _i1.Mock implements _i4.DatabaseEvent {
  MockDatabaseEvent() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.DatabaseEventType get type => (super.noSuchMethod(
        Invocation.getter(#type),
        returnValue: _i9.DatabaseEventType.childAdded,
      ) as _i9.DatabaseEventType);

  @override
  _i4.DataSnapshot get snapshot => (super.noSuchMethod(
        Invocation.getter(#snapshot),
        returnValue: _FakeDataSnapshot_3(
          this,
          Invocation.getter(#snapshot),
        ),
      ) as _i4.DataSnapshot);
}
