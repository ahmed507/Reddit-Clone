// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavState {
  HomeHeader get currentHome => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavStateCopyWith<NavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavStateCopyWith<$Res> {
  factory $NavStateCopyWith(NavState value, $Res Function(NavState) then) =
      _$NavStateCopyWithImpl<$Res, NavState>;
  @useResult
  $Res call({HomeHeader currentHome, int currentIndex, bool isExpanded});
}

/// @nodoc
class _$NavStateCopyWithImpl<$Res, $Val extends NavState>
    implements $NavStateCopyWith<$Res> {
  _$NavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentHome = null,
    Object? currentIndex = null,
    Object? isExpanded = null,
  }) {
    return _then(_value.copyWith(
      currentHome: null == currentHome
          ? _value.currentHome
          : currentHome // ignore: cast_nullable_to_non_nullable
              as HomeHeader,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavStateImplCopyWith<$Res>
    implements $NavStateCopyWith<$Res> {
  factory _$$NavStateImplCopyWith(
          _$NavStateImpl value, $Res Function(_$NavStateImpl) then) =
      __$$NavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeHeader currentHome, int currentIndex, bool isExpanded});
}

/// @nodoc
class __$$NavStateImplCopyWithImpl<$Res>
    extends _$NavStateCopyWithImpl<$Res, _$NavStateImpl>
    implements _$$NavStateImplCopyWith<$Res> {
  __$$NavStateImplCopyWithImpl(
      _$NavStateImpl _value, $Res Function(_$NavStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentHome = null,
    Object? currentIndex = null,
    Object? isExpanded = null,
  }) {
    return _then(_$NavStateImpl(
      currentHome: null == currentHome
          ? _value.currentHome
          : currentHome // ignore: cast_nullable_to_non_nullable
              as HomeHeader,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NavStateImpl implements _NavState {
  const _$NavStateImpl(
      {required this.currentHome,
      required this.currentIndex,
      required this.isExpanded});

  @override
  final HomeHeader currentHome;
  @override
  final int currentIndex;
  @override
  final bool isExpanded;

  @override
  String toString() {
    return 'NavState(currentHome: $currentHome, currentIndex: $currentIndex, isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavStateImpl &&
            (identical(other.currentHome, currentHome) ||
                other.currentHome == currentHome) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentHome, currentIndex, isExpanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavStateImplCopyWith<_$NavStateImpl> get copyWith =>
      __$$NavStateImplCopyWithImpl<_$NavStateImpl>(this, _$identity);
}

abstract class _NavState implements NavState {
  const factory _NavState(
      {required final HomeHeader currentHome,
      required final int currentIndex,
      required final bool isExpanded}) = _$NavStateImpl;

  @override
  HomeHeader get currentHome;
  @override
  int get currentIndex;
  @override
  bool get isExpanded;
  @override
  @JsonKey(ignore: true)
  _$$NavStateImplCopyWith<_$NavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
