// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'addstudent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddstudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(studentmodel student) addStudentToHive,
    required TResult Function(String imagepath) changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(studentmodel student)? addStudentToHive,
    TResult Function(String imagepath)? changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(studentmodel student)? addStudentToHive,
    TResult Function(String imagepath)? changeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentToHive value) addStudentToHive,
    required TResult Function(ChangeImage value) changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudentToHive value)? addStudentToHive,
    TResult Function(ChangeImage value)? changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentToHive value)? addStudentToHive,
    TResult Function(ChangeImage value)? changeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddstudentEventCopyWith<$Res> {
  factory $AddstudentEventCopyWith(
          AddstudentEvent value, $Res Function(AddstudentEvent) then) =
      _$AddstudentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddstudentEventCopyWithImpl<$Res>
    implements $AddstudentEventCopyWith<$Res> {
  _$AddstudentEventCopyWithImpl(this._value, this._then);

  final AddstudentEvent _value;
  // ignore: unused_field
  final $Res Function(AddstudentEvent) _then;
}

/// @nodoc
abstract class _$$AddStudentToHiveCopyWith<$Res> {
  factory _$$AddStudentToHiveCopyWith(
          _$AddStudentToHive value, $Res Function(_$AddStudentToHive) then) =
      __$$AddStudentToHiveCopyWithImpl<$Res>;
  $Res call({studentmodel student});
}

/// @nodoc
class __$$AddStudentToHiveCopyWithImpl<$Res>
    extends _$AddstudentEventCopyWithImpl<$Res>
    implements _$$AddStudentToHiveCopyWith<$Res> {
  __$$AddStudentToHiveCopyWithImpl(
      _$AddStudentToHive _value, $Res Function(_$AddStudentToHive) _then)
      : super(_value, (v) => _then(v as _$AddStudentToHive));

  @override
  _$AddStudentToHive get _value => super._value as _$AddStudentToHive;

  @override
  $Res call({
    Object? student = freezed,
  }) {
    return _then(_$AddStudentToHive(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as studentmodel,
    ));
  }
}

/// @nodoc

class _$AddStudentToHive implements AddStudentToHive {
  const _$AddStudentToHive({required this.student});

  @override
  final studentmodel student;

  @override
  String toString() {
    return 'AddstudentEvent.addStudentToHive(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudentToHive &&
            const DeepCollectionEquality().equals(other.student, student));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(student));

  @JsonKey(ignore: true)
  @override
  _$$AddStudentToHiveCopyWith<_$AddStudentToHive> get copyWith =>
      __$$AddStudentToHiveCopyWithImpl<_$AddStudentToHive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(studentmodel student) addStudentToHive,
    required TResult Function(String imagepath) changeImage,
  }) {
    return addStudentToHive(student);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(studentmodel student)? addStudentToHive,
    TResult Function(String imagepath)? changeImage,
  }) {
    return addStudentToHive?.call(student);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(studentmodel student)? addStudentToHive,
    TResult Function(String imagepath)? changeImage,
    required TResult orElse(),
  }) {
    if (addStudentToHive != null) {
      return addStudentToHive(student);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentToHive value) addStudentToHive,
    required TResult Function(ChangeImage value) changeImage,
  }) {
    return addStudentToHive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudentToHive value)? addStudentToHive,
    TResult Function(ChangeImage value)? changeImage,
  }) {
    return addStudentToHive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentToHive value)? addStudentToHive,
    TResult Function(ChangeImage value)? changeImage,
    required TResult orElse(),
  }) {
    if (addStudentToHive != null) {
      return addStudentToHive(this);
    }
    return orElse();
  }
}

abstract class AddStudentToHive implements AddstudentEvent {
  const factory AddStudentToHive({required final studentmodel student}) =
      _$AddStudentToHive;

  studentmodel get student;
  @JsonKey(ignore: true)
  _$$AddStudentToHiveCopyWith<_$AddStudentToHive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeImageCopyWith<$Res> {
  factory _$$ChangeImageCopyWith(
          _$ChangeImage value, $Res Function(_$ChangeImage) then) =
      __$$ChangeImageCopyWithImpl<$Res>;
  $Res call({String imagepath});
}

/// @nodoc
class __$$ChangeImageCopyWithImpl<$Res>
    extends _$AddstudentEventCopyWithImpl<$Res>
    implements _$$ChangeImageCopyWith<$Res> {
  __$$ChangeImageCopyWithImpl(
      _$ChangeImage _value, $Res Function(_$ChangeImage) _then)
      : super(_value, (v) => _then(v as _$ChangeImage));

  @override
  _$ChangeImage get _value => super._value as _$ChangeImage;

  @override
  $Res call({
    Object? imagepath = freezed,
  }) {
    return _then(_$ChangeImage(
      imagepath: imagepath == freezed
          ? _value.imagepath
          : imagepath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeImage implements ChangeImage {
  const _$ChangeImage({required this.imagepath});

  @override
  final String imagepath;

  @override
  String toString() {
    return 'AddstudentEvent.changeImage(imagepath: $imagepath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImage &&
            const DeepCollectionEquality().equals(other.imagepath, imagepath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imagepath));

  @JsonKey(ignore: true)
  @override
  _$$ChangeImageCopyWith<_$ChangeImage> get copyWith =>
      __$$ChangeImageCopyWithImpl<_$ChangeImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(studentmodel student) addStudentToHive,
    required TResult Function(String imagepath) changeImage,
  }) {
    return changeImage(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(studentmodel student)? addStudentToHive,
    TResult Function(String imagepath)? changeImage,
  }) {
    return changeImage?.call(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(studentmodel student)? addStudentToHive,
    TResult Function(String imagepath)? changeImage,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(imagepath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentToHive value) addStudentToHive,
    required TResult Function(ChangeImage value) changeImage,
  }) {
    return changeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudentToHive value)? addStudentToHive,
    TResult Function(ChangeImage value)? changeImage,
  }) {
    return changeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentToHive value)? addStudentToHive,
    TResult Function(ChangeImage value)? changeImage,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(this);
    }
    return orElse();
  }
}

abstract class ChangeImage implements AddstudentEvent {
  const factory ChangeImage({required final String imagepath}) = _$ChangeImage;

  String get imagepath;
  @JsonKey(ignore: true)
  _$$ChangeImageCopyWith<_$ChangeImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddstudentState {
  studentmodel get student => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddstudentStateCopyWith<AddstudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddstudentStateCopyWith<$Res> {
  factory $AddstudentStateCopyWith(
          AddstudentState value, $Res Function(AddstudentState) then) =
      _$AddstudentStateCopyWithImpl<$Res>;
  $Res call({studentmodel student});
}

/// @nodoc
class _$AddstudentStateCopyWithImpl<$Res>
    implements $AddstudentStateCopyWith<$Res> {
  _$AddstudentStateCopyWithImpl(this._value, this._then);

  final AddstudentState _value;
  // ignore: unused_field
  final $Res Function(AddstudentState) _then;

  @override
  $Res call({
    Object? student = freezed,
  }) {
    return _then(_value.copyWith(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as studentmodel,
    ));
  }
}

/// @nodoc
abstract class _$$_AddstudentStateCopyWith<$Res>
    implements $AddstudentStateCopyWith<$Res> {
  factory _$$_AddstudentStateCopyWith(
          _$_AddstudentState value, $Res Function(_$_AddstudentState) then) =
      __$$_AddstudentStateCopyWithImpl<$Res>;
  @override
  $Res call({studentmodel student});
}

/// @nodoc
class __$$_AddstudentStateCopyWithImpl<$Res>
    extends _$AddstudentStateCopyWithImpl<$Res>
    implements _$$_AddstudentStateCopyWith<$Res> {
  __$$_AddstudentStateCopyWithImpl(
      _$_AddstudentState _value, $Res Function(_$_AddstudentState) _then)
      : super(_value, (v) => _then(v as _$_AddstudentState));

  @override
  _$_AddstudentState get _value => super._value as _$_AddstudentState;

  @override
  $Res call({
    Object? student = freezed,
  }) {
    return _then(_$_AddstudentState(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as studentmodel,
    ));
  }
}

/// @nodoc

class _$_AddstudentState implements _AddstudentState {
  const _$_AddstudentState({required this.student});

  @override
  final studentmodel student;

  @override
  String toString() {
    return 'AddstudentState(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddstudentState &&
            const DeepCollectionEquality().equals(other.student, student));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(student));

  @JsonKey(ignore: true)
  @override
  _$$_AddstudentStateCopyWith<_$_AddstudentState> get copyWith =>
      __$$_AddstudentStateCopyWithImpl<_$_AddstudentState>(this, _$identity);
}

abstract class _AddstudentState implements AddstudentState {
  const factory _AddstudentState({required final studentmodel student}) =
      _$_AddstudentState;

  @override
  studentmodel get student;
  @override
  @JsonKey(ignore: true)
  _$$_AddstudentStateCopyWith<_$_AddstudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
