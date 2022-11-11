// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_students_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchStudentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchStudentDone,
    required TResult Function() initialSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchValue)? searchStudentDone,
    TResult Function()? initialSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchStudentDone,
    TResult Function()? initialSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStudentDone value) searchStudentDone,
    required TResult Function(InitialSearch value) initialSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchStudentDone value)? searchStudentDone,
    TResult Function(InitialSearch value)? initialSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStudentDone value)? searchStudentDone,
    TResult Function(InitialSearch value)? initialSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStudentsEventCopyWith<$Res> {
  factory $SearchStudentsEventCopyWith(
          SearchStudentsEvent value, $Res Function(SearchStudentsEvent) then) =
      _$SearchStudentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStudentsEventCopyWithImpl<$Res>
    implements $SearchStudentsEventCopyWith<$Res> {
  _$SearchStudentsEventCopyWithImpl(this._value, this._then);

  final SearchStudentsEvent _value;
  // ignore: unused_field
  final $Res Function(SearchStudentsEvent) _then;
}

/// @nodoc
abstract class _$$SearchStudentDoneCopyWith<$Res> {
  factory _$$SearchStudentDoneCopyWith(
          _$SearchStudentDone value, $Res Function(_$SearchStudentDone) then) =
      __$$SearchStudentDoneCopyWithImpl<$Res>;
  $Res call({String searchValue});
}

/// @nodoc
class __$$SearchStudentDoneCopyWithImpl<$Res>
    extends _$SearchStudentsEventCopyWithImpl<$Res>
    implements _$$SearchStudentDoneCopyWith<$Res> {
  __$$SearchStudentDoneCopyWithImpl(
      _$SearchStudentDone _value, $Res Function(_$SearchStudentDone) _then)
      : super(_value, (v) => _then(v as _$SearchStudentDone));

  @override
  _$SearchStudentDone get _value => super._value as _$SearchStudentDone;

  @override
  $Res call({
    Object? searchValue = freezed,
  }) {
    return _then(_$SearchStudentDone(
      searchValue: searchValue == freezed
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStudentDone implements SearchStudentDone {
  const _$SearchStudentDone({required this.searchValue});

  @override
  final String searchValue;

  @override
  String toString() {
    return 'SearchStudentsEvent.searchStudentDone(searchValue: $searchValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStudentDone &&
            const DeepCollectionEquality()
                .equals(other.searchValue, searchValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchValue));

  @JsonKey(ignore: true)
  @override
  _$$SearchStudentDoneCopyWith<_$SearchStudentDone> get copyWith =>
      __$$SearchStudentDoneCopyWithImpl<_$SearchStudentDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchStudentDone,
    required TResult Function() initialSearch,
  }) {
    return searchStudentDone(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchValue)? searchStudentDone,
    TResult Function()? initialSearch,
  }) {
    return searchStudentDone?.call(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchStudentDone,
    TResult Function()? initialSearch,
    required TResult orElse(),
  }) {
    if (searchStudentDone != null) {
      return searchStudentDone(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStudentDone value) searchStudentDone,
    required TResult Function(InitialSearch value) initialSearch,
  }) {
    return searchStudentDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchStudentDone value)? searchStudentDone,
    TResult Function(InitialSearch value)? initialSearch,
  }) {
    return searchStudentDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStudentDone value)? searchStudentDone,
    TResult Function(InitialSearch value)? initialSearch,
    required TResult orElse(),
  }) {
    if (searchStudentDone != null) {
      return searchStudentDone(this);
    }
    return orElse();
  }
}

abstract class SearchStudentDone implements SearchStudentsEvent {
  const factory SearchStudentDone({required final String searchValue}) =
      _$SearchStudentDone;

  String get searchValue;
  @JsonKey(ignore: true)
  _$$SearchStudentDoneCopyWith<_$SearchStudentDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialSearchCopyWith<$Res> {
  factory _$$InitialSearchCopyWith(
          _$InitialSearch value, $Res Function(_$InitialSearch) then) =
      __$$InitialSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSearchCopyWithImpl<$Res>
    extends _$SearchStudentsEventCopyWithImpl<$Res>
    implements _$$InitialSearchCopyWith<$Res> {
  __$$InitialSearchCopyWithImpl(
      _$InitialSearch _value, $Res Function(_$InitialSearch) _then)
      : super(_value, (v) => _then(v as _$InitialSearch));

  @override
  _$InitialSearch get _value => super._value as _$InitialSearch;
}

/// @nodoc

class _$InitialSearch implements InitialSearch {
  const _$InitialSearch();

  @override
  String toString() {
    return 'SearchStudentsEvent.initialSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) searchStudentDone,
    required TResult Function() initialSearch,
  }) {
    return initialSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchValue)? searchStudentDone,
    TResult Function()? initialSearch,
  }) {
    return initialSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? searchStudentDone,
    TResult Function()? initialSearch,
    required TResult orElse(),
  }) {
    if (initialSearch != null) {
      return initialSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchStudentDone value) searchStudentDone,
    required TResult Function(InitialSearch value) initialSearch,
  }) {
    return initialSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchStudentDone value)? searchStudentDone,
    TResult Function(InitialSearch value)? initialSearch,
  }) {
    return initialSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchStudentDone value)? searchStudentDone,
    TResult Function(InitialSearch value)? initialSearch,
    required TResult orElse(),
  }) {
    if (initialSearch != null) {
      return initialSearch(this);
    }
    return orElse();
  }
}

abstract class InitialSearch implements SearchStudentsEvent {
  const factory InitialSearch() = _$InitialSearch;
}

/// @nodoc
mixin _$SearchStudentsState {
  List<studentmodel> get studentList => throw _privateConstructorUsedError;
  List<studentmodel> get displayStudent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStudentsStateCopyWith<SearchStudentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStudentsStateCopyWith<$Res> {
  factory $SearchStudentsStateCopyWith(
          SearchStudentsState value, $Res Function(SearchStudentsState) then) =
      _$SearchStudentsStateCopyWithImpl<$Res>;
  $Res call(
      {List<studentmodel> studentList, List<studentmodel> displayStudent});
}

/// @nodoc
class _$SearchStudentsStateCopyWithImpl<$Res>
    implements $SearchStudentsStateCopyWith<$Res> {
  _$SearchStudentsStateCopyWithImpl(this._value, this._then);

  final SearchStudentsState _value;
  // ignore: unused_field
  final $Res Function(SearchStudentsState) _then;

  @override
  $Res call({
    Object? studentList = freezed,
    Object? displayStudent = freezed,
  }) {
    return _then(_value.copyWith(
      studentList: studentList == freezed
          ? _value.studentList
          : studentList // ignore: cast_nullable_to_non_nullable
              as List<studentmodel>,
      displayStudent: displayStudent == freezed
          ? _value.displayStudent
          : displayStudent // ignore: cast_nullable_to_non_nullable
              as List<studentmodel>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStudentsStateCopyWith<$Res>
    implements $SearchStudentsStateCopyWith<$Res> {
  factory _$$_SearchStudentsStateCopyWith(_$_SearchStudentsState value,
          $Res Function(_$_SearchStudentsState) then) =
      __$$_SearchStudentsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<studentmodel> studentList, List<studentmodel> displayStudent});
}

/// @nodoc
class __$$_SearchStudentsStateCopyWithImpl<$Res>
    extends _$SearchStudentsStateCopyWithImpl<$Res>
    implements _$$_SearchStudentsStateCopyWith<$Res> {
  __$$_SearchStudentsStateCopyWithImpl(_$_SearchStudentsState _value,
      $Res Function(_$_SearchStudentsState) _then)
      : super(_value, (v) => _then(v as _$_SearchStudentsState));

  @override
  _$_SearchStudentsState get _value => super._value as _$_SearchStudentsState;

  @override
  $Res call({
    Object? studentList = freezed,
    Object? displayStudent = freezed,
  }) {
    return _then(_$_SearchStudentsState(
      studentList: studentList == freezed
          ? _value._studentList
          : studentList // ignore: cast_nullable_to_non_nullable
              as List<studentmodel>,
      displayStudent: displayStudent == freezed
          ? _value._displayStudent
          : displayStudent // ignore: cast_nullable_to_non_nullable
              as List<studentmodel>,
    ));
  }
}

/// @nodoc

class _$_SearchStudentsState implements _SearchStudentsState {
  const _$_SearchStudentsState(
      {required final List<studentmodel> studentList,
      required final List<studentmodel> displayStudent})
      : _studentList = studentList,
        _displayStudent = displayStudent;

  final List<studentmodel> _studentList;
  @override
  List<studentmodel> get studentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentList);
  }

  final List<studentmodel> _displayStudent;
  @override
  List<studentmodel> get displayStudent {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displayStudent);
  }

  @override
  String toString() {
    return 'SearchStudentsState(studentList: $studentList, displayStudent: $displayStudent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStudentsState &&
            const DeepCollectionEquality()
                .equals(other._studentList, _studentList) &&
            const DeepCollectionEquality()
                .equals(other._displayStudent, _displayStudent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_studentList),
      const DeepCollectionEquality().hash(_displayStudent));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStudentsStateCopyWith<_$_SearchStudentsState> get copyWith =>
      __$$_SearchStudentsStateCopyWithImpl<_$_SearchStudentsState>(
          this, _$identity);
}

abstract class _SearchStudentsState implements SearchStudentsState {
  const factory _SearchStudentsState(
          {required final List<studentmodel> studentList,
          required final List<studentmodel> displayStudent}) =
      _$_SearchStudentsState;

  @override
  List<studentmodel> get studentList;
  @override
  List<studentmodel> get displayStudent;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStudentsStateCopyWith<_$_SearchStudentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
