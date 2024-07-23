
import 'package:mockito/annotations.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:technicaltestpragma/push_notifications/send_notification.dart';
import 'package:technicaltestpragma/utils/use_sharedpreferences.dart';

@GenerateMocks([UseSharedPreference, FirebaseDatabase, SendNotification, DataSnapshot, DatabaseReference, DatabaseEvent])
void main() {}