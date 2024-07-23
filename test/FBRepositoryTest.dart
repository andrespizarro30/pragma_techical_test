

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:technicaltestpragma/data/repositories/fb_repository.dart';

import 'Mock.mocks.dart';

void main() {
  late FBRepository fbRepository;
  late MockUseSharedPreference mockUseSharedPreference;
  late MockFirebaseDatabase mockFirebaseDatabase;
  late MockSendNotification mockSendNotification;

  setUp(() {
    mockUseSharedPreference = MockUseSharedPreference();
    mockFirebaseDatabase = MockFirebaseDatabase();
    mockSendNotification = MockSendNotification();

    fbRepository = FBRepository(
      useSharedPreference: mockUseSharedPreference,
      firebaseDatabase: mockFirebaseDatabase,
      sendNotification: mockSendNotification,
    );
  });

  group('FBRepository', () {
    test('should send a like and save to shared preferences', () async {

      String catId = '123';
      String catBreed = 'Siamese';
      MockFirebaseDatabase mockDatabaseRef = MockFirebaseDatabase();
      DataSnapshot mockSnapshot = MockDataSnapshot();

      when(mockFirebaseDatabase.ref())
          .thenReturn(mockDatabaseRef as DatabaseReference);

      verify(mockUseSharedPreference.saveLike(catId)).called(1);
      verify(mockSendNotification.sendLikeNotification(catBreed)).called(1);
    });

    test('should dislike and update shared preferences', () async {
      // Arrange
      String catId = '123';
      DatabaseReference mockDatabaseRef = MockDatabaseReference();
      DataSnapshot mockSnapshot = MockDataSnapshot();

      when(mockFirebaseDatabase.ref())
          .thenReturn(mockDatabaseRef);
      when(mockDatabaseRef.child("any"))
          .thenReturn(mockDatabaseRef);
      when(mockDatabaseRef.once())
          .thenAnswer((_) async => MockDatabaseEvent());
      when(mockSnapshot.value).thenReturn({'likes': 1});

      verify(mockDatabaseRef.set({'likes': 0})).called(1);
      verify(mockUseSharedPreference.quiteLike(catId)).called(1);
    });

    test('should return the correct like status from shared preferences', () {
      String catId = '123';
      when(mockUseSharedPreference.getLikeSaved(catId)).thenReturn(true);

      bool? result = fbRepository.getLike(catId);

      expect(result, true);
      verify(mockUseSharedPreference.getLikeSaved(catId)).called(1);
    });

    test('should return the total likes for a cat', () async {

      String catId = '123';
      DatabaseReference mockDatabaseRef = MockDatabaseReference();
      DataSnapshot mockSnapshot = MockDataSnapshot();

      when(mockFirebaseDatabase.ref())
          .thenReturn(mockDatabaseRef);
      when(mockDatabaseRef.child("any"))
          .thenReturn(mockDatabaseRef);
      when(mockDatabaseRef.once())
          .thenAnswer((_) async => MockDatabaseEvent());
      when(mockSnapshot.value).thenReturn({'likes': 5});

      // Act
      int result = await fbRepository.getTotalLikes(catId);

      // Assert
      expect(result, 5);
      verify(mockDatabaseRef.child(catId)).called(1);
      verify(mockDatabaseRef.once()).called(1);
    });

    test('should call updateListenLikes when a like is added or changed', () {
      // Arrange
      DatabaseReference mockDatabaseRef = MockDatabaseReference();
      when(mockFirebaseDatabase.ref())
          .thenReturn(mockDatabaseRef);

      fbRepository.listenLikes((String catId, int likes) {});

      verify(mockDatabaseRef.onChildAdded.listen(any)).called(1);
      verify(mockDatabaseRef.onChildChanged.listen(any)).called(1);
    });
  });
}