import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get firstName;

  @nullable
  String get lastName;

  @nullable
  DateTime get registeredAt;

  @nullable
  int get birthday;

  @nullable
  String get gender;

  @nullable
  bool get hasBirthday;

  @nullable
  bool get hasDisplayName;

  @nullable
  bool get hasFirstName;

  @nullable
  bool get hasGender;

  @nullable
  bool get hasLastName;

  @nullable
  bool get hasPhotoUrl;

  @nullable
  String get middleName;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..uid = ''
    ..phoneNumber = ''
    ..firstName = ''
    ..lastName = ''
    ..birthday = 0
    ..gender = ''
    ..hasBirthday = false
    ..hasDisplayName = false
    ..hasFirstName = false
    ..hasGender = false
    ..hasLastName = false
    ..hasPhotoUrl = false
    ..middleName = ''
    ..displayName = ''
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String firstName,
  String lastName,
  DateTime registeredAt,
  int birthday,
  String gender,
  bool hasBirthday,
  bool hasDisplayName,
  bool hasFirstName,
  bool hasGender,
  bool hasLastName,
  bool hasPhotoUrl,
  String middleName,
  String displayName,
  String photoUrl,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..firstName = firstName
          ..lastName = lastName
          ..registeredAt = registeredAt
          ..birthday = birthday
          ..gender = gender
          ..hasBirthday = hasBirthday
          ..hasDisplayName = hasDisplayName
          ..hasFirstName = hasFirstName
          ..hasGender = hasGender
          ..hasLastName = hasLastName
          ..hasPhotoUrl = hasPhotoUrl
          ..middleName = middleName
          ..displayName = displayName
          ..photoUrl = photoUrl));
