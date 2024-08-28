// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FamilyMember _$FamilyMemberFromJson(Map<String, dynamic> json) {
  return _FamilyMember.fromJson(json);
}

/// @nodoc
mixin _$FamilyMember {
  String get name => throw _privateConstructorUsedError;
  String get relationship => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyMemberCopyWith<FamilyMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyMemberCopyWith<$Res> {
  factory $FamilyMemberCopyWith(
          FamilyMember value, $Res Function(FamilyMember) then) =
      _$FamilyMemberCopyWithImpl<$Res, FamilyMember>;
  @useResult
  $Res call({String name, String relationship, DateTime dateOfBirth});
}

/// @nodoc
class _$FamilyMemberCopyWithImpl<$Res, $Val extends FamilyMember>
    implements $FamilyMemberCopyWith<$Res> {
  _$FamilyMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? relationship = null,
    Object? dateOfBirth = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FamilyMemberImplCopyWith<$Res>
    implements $FamilyMemberCopyWith<$Res> {
  factory _$$FamilyMemberImplCopyWith(
          _$FamilyMemberImpl value, $Res Function(_$FamilyMemberImpl) then) =
      __$$FamilyMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String relationship, DateTime dateOfBirth});
}

/// @nodoc
class __$$FamilyMemberImplCopyWithImpl<$Res>
    extends _$FamilyMemberCopyWithImpl<$Res, _$FamilyMemberImpl>
    implements _$$FamilyMemberImplCopyWith<$Res> {
  __$$FamilyMemberImplCopyWithImpl(
      _$FamilyMemberImpl _value, $Res Function(_$FamilyMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? relationship = null,
    Object? dateOfBirth = null,
  }) {
    return _then(_$FamilyMemberImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilyMemberImpl implements _FamilyMember {
  const _$FamilyMemberImpl(
      {required this.name,
      required this.relationship,
      required this.dateOfBirth});

  factory _$FamilyMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyMemberImplFromJson(json);

  @override
  final String name;
  @override
  final String relationship;
  @override
  final DateTime dateOfBirth;

  @override
  String toString() {
    return 'FamilyMember(name: $name, relationship: $relationship, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyMemberImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, relationship, dateOfBirth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyMemberImplCopyWith<_$FamilyMemberImpl> get copyWith =>
      __$$FamilyMemberImplCopyWithImpl<_$FamilyMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyMemberImplToJson(
      this,
    );
  }
}

abstract class _FamilyMember implements FamilyMember {
  const factory _FamilyMember(
      {required final String name,
      required final String relationship,
      required final DateTime dateOfBirth}) = _$FamilyMemberImpl;

  factory _FamilyMember.fromJson(Map<String, dynamic> json) =
      _$FamilyMemberImpl.fromJson;

  @override
  String get name;
  @override
  String get relationship;
  @override
  DateTime get dateOfBirth;
  @override
  @JsonKey(ignore: true)
  _$$FamilyMemberImplCopyWith<_$FamilyMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRegistration _$UserRegistrationFromJson(Map<String, dynamic> json) {
  return _UserRegistration.fromJson(json);
}

/// @nodoc
mixin _$UserRegistration {
  String get name => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  String get favoriteAnimal => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  List<FamilyMember> get familyMembers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegistrationCopyWith<UserRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationCopyWith<$Res> {
  factory $UserRegistrationCopyWith(
          UserRegistration value, $Res Function(UserRegistration) then) =
      _$UserRegistrationCopyWithImpl<$Res, UserRegistration>;
  @useResult
  $Res call(
      {String name,
      DateTime dateOfBirth,
      String favoriteAnimal,
      String email,
      String password,
      String address,
      String city,
      String state,
      String phone,
      List<FamilyMember> familyMembers});
}

/// @nodoc
class _$UserRegistrationCopyWithImpl<$Res, $Val extends UserRegistration>
    implements $UserRegistrationCopyWith<$Res> {
  _$UserRegistrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateOfBirth = null,
    Object? favoriteAnimal = null,
    Object? email = null,
    Object? password = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? phone = null,
    Object? familyMembers = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      favoriteAnimal: null == favoriteAnimal
          ? _value.favoriteAnimal
          : favoriteAnimal // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      familyMembers: null == familyMembers
          ? _value.familyMembers
          : familyMembers // ignore: cast_nullable_to_non_nullable
              as List<FamilyMember>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegistrationImplCopyWith<$Res>
    implements $UserRegistrationCopyWith<$Res> {
  factory _$$UserRegistrationImplCopyWith(_$UserRegistrationImpl value,
          $Res Function(_$UserRegistrationImpl) then) =
      __$$UserRegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime dateOfBirth,
      String favoriteAnimal,
      String email,
      String password,
      String address,
      String city,
      String state,
      String phone,
      List<FamilyMember> familyMembers});
}

/// @nodoc
class __$$UserRegistrationImplCopyWithImpl<$Res>
    extends _$UserRegistrationCopyWithImpl<$Res, _$UserRegistrationImpl>
    implements _$$UserRegistrationImplCopyWith<$Res> {
  __$$UserRegistrationImplCopyWithImpl(_$UserRegistrationImpl _value,
      $Res Function(_$UserRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateOfBirth = null,
    Object? favoriteAnimal = null,
    Object? email = null,
    Object? password = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? phone = null,
    Object? familyMembers = null,
  }) {
    return _then(_$UserRegistrationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      favoriteAnimal: null == favoriteAnimal
          ? _value.favoriteAnimal
          : favoriteAnimal // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      familyMembers: null == familyMembers
          ? _value._familyMembers
          : familyMembers // ignore: cast_nullable_to_non_nullable
              as List<FamilyMember>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegistrationImpl implements _UserRegistration {
  const _$UserRegistrationImpl(
      {required this.name,
      required this.dateOfBirth,
      required this.favoriteAnimal,
      required this.email,
      required this.password,
      required this.address,
      required this.city,
      required this.state,
      required this.phone,
      required final List<FamilyMember> familyMembers})
      : _familyMembers = familyMembers;

  factory _$UserRegistrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegistrationImplFromJson(json);

  @override
  final String name;
  @override
  final DateTime dateOfBirth;
  @override
  final String favoriteAnimal;
  @override
  final String email;
  @override
  final String password;
  @override
  final String address;
  @override
  final String city;
  @override
  final String state;
  @override
  final String phone;
  final List<FamilyMember> _familyMembers;
  @override
  List<FamilyMember> get familyMembers {
    if (_familyMembers is EqualUnmodifiableListView) return _familyMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyMembers);
  }

  @override
  String toString() {
    return 'UserRegistration(name: $name, dateOfBirth: $dateOfBirth, favoriteAnimal: $favoriteAnimal, email: $email, password: $password, address: $address, city: $city, state: $state, phone: $phone, familyMembers: $familyMembers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.favoriteAnimal, favoriteAnimal) ||
                other.favoriteAnimal == favoriteAnimal) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality()
                .equals(other._familyMembers, _familyMembers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      dateOfBirth,
      favoriteAnimal,
      email,
      password,
      address,
      city,
      state,
      phone,
      const DeepCollectionEquality().hash(_familyMembers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationImplCopyWith<_$UserRegistrationImpl> get copyWith =>
      __$$UserRegistrationImplCopyWithImpl<_$UserRegistrationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegistrationImplToJson(
      this,
    );
  }
}

abstract class _UserRegistration implements UserRegistration {
  const factory _UserRegistration(
          {required final String name,
          required final DateTime dateOfBirth,
          required final String favoriteAnimal,
          required final String email,
          required final String password,
          required final String address,
          required final String city,
          required final String state,
          required final String phone,
          required final List<FamilyMember> familyMembers}) =
      _$UserRegistrationImpl;

  factory _UserRegistration.fromJson(Map<String, dynamic> json) =
      _$UserRegistrationImpl.fromJson;

  @override
  String get name;
  @override
  DateTime get dateOfBirth;
  @override
  String get favoriteAnimal;
  @override
  String get email;
  @override
  String get password;
  @override
  String get address;
  @override
  String get city;
  @override
  String get state;
  @override
  String get phone;
  @override
  List<FamilyMember> get familyMembers;
  @override
  @JsonKey(ignore: true)
  _$$UserRegistrationImplCopyWith<_$UserRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
