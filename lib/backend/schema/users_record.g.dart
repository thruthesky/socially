// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.registeredAt;
    if (value != null) {
      result
        ..add('registeredAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hasBirthday;
    if (value != null) {
      result
        ..add('hasBirthday')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasDisplayName;
    if (value != null) {
      result
        ..add('hasDisplayName')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasFirstName;
    if (value != null) {
      result
        ..add('hasFirstName')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasGender;
    if (value != null) {
      result
        ..add('hasGender')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasLastName;
    if (value != null) {
      result
        ..add('hasLastName')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasPhotoUrl;
    if (value != null) {
      result
        ..add('hasPhotoUrl')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.middleName;
    if (value != null) {
      result
        ..add('middleName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'registeredAt':
          result.registeredAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasBirthday':
          result.hasBirthday = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasDisplayName':
          result.hasDisplayName = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasFirstName':
          result.hasFirstName = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasGender':
          result.hasGender = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasLastName':
          result.hasLastName = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasPhotoUrl':
          result.hasPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'middleName':
          result.middleName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String email;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final DateTime registeredAt;
  @override
  final int birthday;
  @override
  final String gender;
  @override
  final bool hasBirthday;
  @override
  final bool hasDisplayName;
  @override
  final bool hasFirstName;
  @override
  final bool hasGender;
  @override
  final bool hasLastName;
  @override
  final bool hasPhotoUrl;
  @override
  final String middleName;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.email,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.firstName,
      this.lastName,
      this.registeredAt,
      this.birthday,
      this.gender,
      this.hasBirthday,
      this.hasDisplayName,
      this.hasFirstName,
      this.hasGender,
      this.hasLastName,
      this.hasPhotoUrl,
      this.middleName,
      this.displayName,
      this.photoUrl,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        registeredAt == other.registeredAt &&
        birthday == other.birthday &&
        gender == other.gender &&
        hasBirthday == other.hasBirthday &&
        hasDisplayName == other.hasDisplayName &&
        hasFirstName == other.hasFirstName &&
        hasGender == other.hasGender &&
        hasLastName == other.hasLastName &&
        hasPhotoUrl == other.hasPhotoUrl &&
        middleName == other.middleName &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                email
                                                                                    .hashCode),
                                                                            uid
                                                                                .hashCode),
                                                                        createdTime
                                                                            .hashCode),
                                                                    phoneNumber
                                                                        .hashCode),
                                                                firstName
                                                                    .hashCode),
                                                            lastName.hashCode),
                                                        registeredAt.hashCode),
                                                    birthday.hashCode),
                                                gender.hashCode),
                                            hasBirthday.hashCode),
                                        hasDisplayName.hashCode),
                                    hasFirstName.hashCode),
                                hasGender.hashCode),
                            hasLastName.hashCode),
                        hasPhotoUrl.hashCode),
                    middleName.hashCode),
                displayName.hashCode),
            photoUrl.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('email', email)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('registeredAt', registeredAt)
          ..add('birthday', birthday)
          ..add('gender', gender)
          ..add('hasBirthday', hasBirthday)
          ..add('hasDisplayName', hasDisplayName)
          ..add('hasFirstName', hasFirstName)
          ..add('hasGender', hasGender)
          ..add('hasLastName', hasLastName)
          ..add('hasPhotoUrl', hasPhotoUrl)
          ..add('middleName', middleName)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  DateTime _registeredAt;
  DateTime get registeredAt => _$this._registeredAt;
  set registeredAt(DateTime registeredAt) =>
      _$this._registeredAt = registeredAt;

  int _birthday;
  int get birthday => _$this._birthday;
  set birthday(int birthday) => _$this._birthday = birthday;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  bool _hasBirthday;
  bool get hasBirthday => _$this._hasBirthday;
  set hasBirthday(bool hasBirthday) => _$this._hasBirthday = hasBirthday;

  bool _hasDisplayName;
  bool get hasDisplayName => _$this._hasDisplayName;
  set hasDisplayName(bool hasDisplayName) =>
      _$this._hasDisplayName = hasDisplayName;

  bool _hasFirstName;
  bool get hasFirstName => _$this._hasFirstName;
  set hasFirstName(bool hasFirstName) => _$this._hasFirstName = hasFirstName;

  bool _hasGender;
  bool get hasGender => _$this._hasGender;
  set hasGender(bool hasGender) => _$this._hasGender = hasGender;

  bool _hasLastName;
  bool get hasLastName => _$this._hasLastName;
  set hasLastName(bool hasLastName) => _$this._hasLastName = hasLastName;

  bool _hasPhotoUrl;
  bool get hasPhotoUrl => _$this._hasPhotoUrl;
  set hasPhotoUrl(bool hasPhotoUrl) => _$this._hasPhotoUrl = hasPhotoUrl;

  String _middleName;
  String get middleName => _$this._middleName;
  set middleName(String middleName) => _$this._middleName = middleName;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _registeredAt = $v.registeredAt;
      _birthday = $v.birthday;
      _gender = $v.gender;
      _hasBirthday = $v.hasBirthday;
      _hasDisplayName = $v.hasDisplayName;
      _hasFirstName = $v.hasFirstName;
      _hasGender = $v.hasGender;
      _hasLastName = $v.hasLastName;
      _hasPhotoUrl = $v.hasPhotoUrl;
      _middleName = $v.middleName;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            firstName: firstName,
            lastName: lastName,
            registeredAt: registeredAt,
            birthday: birthday,
            gender: gender,
            hasBirthday: hasBirthday,
            hasDisplayName: hasDisplayName,
            hasFirstName: hasFirstName,
            hasGender: hasGender,
            hasLastName: hasLastName,
            hasPhotoUrl: hasPhotoUrl,
            middleName: middleName,
            displayName: displayName,
            photoUrl: photoUrl,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
