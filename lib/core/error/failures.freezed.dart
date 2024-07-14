// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(String? message, int code) serverError,
    required TResult Function() timeout,
    required TResult Function() tooManyRequests,
    required TResult Function() cacheError,
    required TResult Function() noData,
    required TResult Function(String? message) internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(String? message, int code)? serverError,
    TResult? Function()? timeout,
    TResult? Function()? tooManyRequests,
    TResult? Function()? cacheError,
    TResult? Function()? noData,
    TResult? Function(String? message)? internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(String? message, int code)? serverError,
    TResult Function()? timeout,
    TResult Function()? tooManyRequests,
    TResult Function()? cacheError,
    TResult Function()? noData,
    TResult Function(String? message)? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Timeout<T> value) timeout,
    required TResult Function(_TooManyRequests<T> value) tooManyRequests,
    required TResult Function(_CacheError<T> value) cacheError,
    required TResult Function(_NoData<T> value) noData,
    required TResult Function(_InternalError<T> value) internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Timeout<T> value)? timeout,
    TResult? Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CacheError<T> value)? cacheError,
    TResult? Function(_NoData<T> value)? noData,
    TResult? Function(_InternalError<T> value)? internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Timeout<T> value)? timeout,
    TResult Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult Function(_CacheError<T> value)? cacheError,
    TResult Function(_NoData<T> value)? noData,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res, Failure<T>>;
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res, $Val extends Failure<T>>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<T, $Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl<T> value, $Res Function(_$NoInternetImpl<T>) then) =
      __$$NoInternetImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$NoInternetImpl<T>>
    implements _$$NoInternetImplCopyWith<T, $Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl<T> _value, $Res Function(_$NoInternetImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetImpl<T> implements _NoInternet<T> {
  const _$NoInternetImpl();

  @override
  String toString() {
    return 'Failure<$T>.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(String? message, int code) serverError,
    required TResult Function() timeout,
    required TResult Function() tooManyRequests,
    required TResult Function() cacheError,
    required TResult Function() noData,
    required TResult Function(String? message) internalError,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(String? message, int code)? serverError,
    TResult? Function()? timeout,
    TResult? Function()? tooManyRequests,
    TResult? Function()? cacheError,
    TResult? Function()? noData,
    TResult? Function(String? message)? internalError,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(String? message, int code)? serverError,
    TResult Function()? timeout,
    TResult Function()? tooManyRequests,
    TResult Function()? cacheError,
    TResult Function()? noData,
    TResult Function(String? message)? internalError,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Timeout<T> value) timeout,
    required TResult Function(_TooManyRequests<T> value) tooManyRequests,
    required TResult Function(_CacheError<T> value) cacheError,
    required TResult Function(_NoData<T> value) noData,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Timeout<T> value)? timeout,
    TResult? Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CacheError<T> value)? cacheError,
    TResult? Function(_NoData<T> value)? noData,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Timeout<T> value)? timeout,
    TResult Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult Function(_CacheError<T> value)? cacheError,
    TResult Function(_NoData<T> value)? noData,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet<T> implements Failure<T> {
  const factory _NoInternet() = _$NoInternetImpl<T>;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<T, $Res> {
  factory _$$ServerErrorImplCopyWith(_$ServerErrorImpl<T> value,
          $Res Function(_$ServerErrorImpl<T>) then) =
      __$$ServerErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? message, int code});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$ServerErrorImpl<T>>
    implements _$$ServerErrorImplCopyWith<T, $Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl<T> _value, $Res Function(_$ServerErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = null,
  }) {
    return _then(_$ServerErrorImpl<T>(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl<T> implements _ServerError<T> {
  const _$ServerErrorImpl({required this.message, required this.code});

  @override
  final String? message;
  @override
  final int code;

  @override
  String toString() {
    return 'Failure<$T>.serverError(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<T, _$ServerErrorImpl<T>> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<T, _$ServerErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(String? message, int code) serverError,
    required TResult Function() timeout,
    required TResult Function() tooManyRequests,
    required TResult Function() cacheError,
    required TResult Function() noData,
    required TResult Function(String? message) internalError,
  }) {
    return serverError(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(String? message, int code)? serverError,
    TResult? Function()? timeout,
    TResult? Function()? tooManyRequests,
    TResult? Function()? cacheError,
    TResult? Function()? noData,
    TResult? Function(String? message)? internalError,
  }) {
    return serverError?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(String? message, int code)? serverError,
    TResult Function()? timeout,
    TResult Function()? tooManyRequests,
    TResult Function()? cacheError,
    TResult Function()? noData,
    TResult Function(String? message)? internalError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Timeout<T> value) timeout,
    required TResult Function(_TooManyRequests<T> value) tooManyRequests,
    required TResult Function(_CacheError<T> value) cacheError,
    required TResult Function(_NoData<T> value) noData,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Timeout<T> value)? timeout,
    TResult? Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CacheError<T> value)? cacheError,
    TResult? Function(_NoData<T> value)? noData,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Timeout<T> value)? timeout,
    TResult Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult Function(_CacheError<T> value)? cacheError,
    TResult Function(_NoData<T> value)? noData,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError<T> implements Failure<T> {
  const factory _ServerError(
      {required final String? message,
      required final int code}) = _$ServerErrorImpl<T>;

  String? get message;
  int get code;
  @JsonKey(ignore: true)
  _$$ServerErrorImplCopyWith<T, _$ServerErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeoutImplCopyWith<T, $Res> {
  factory _$$TimeoutImplCopyWith(
          _$TimeoutImpl<T> value, $Res Function(_$TimeoutImpl<T>) then) =
      __$$TimeoutImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TimeoutImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$TimeoutImpl<T>>
    implements _$$TimeoutImplCopyWith<T, $Res> {
  __$$TimeoutImplCopyWithImpl(
      _$TimeoutImpl<T> _value, $Res Function(_$TimeoutImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeoutImpl<T> implements _Timeout<T> {
  const _$TimeoutImpl();

  @override
  String toString() {
    return 'Failure<$T>.timeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeoutImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(String? message, int code) serverError,
    required TResult Function() timeout,
    required TResult Function() tooManyRequests,
    required TResult Function() cacheError,
    required TResult Function() noData,
    required TResult Function(String? message) internalError,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(String? message, int code)? serverError,
    TResult? Function()? timeout,
    TResult? Function()? tooManyRequests,
    TResult? Function()? cacheError,
    TResult? Function()? noData,
    TResult? Function(String? message)? internalError,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(String? message, int code)? serverError,
    TResult Function()? timeout,
    TResult Function()? tooManyRequests,
    TResult Function()? cacheError,
    TResult Function()? noData,
    TResult Function(String? message)? internalError,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Timeout<T> value) timeout,
    required TResult Function(_TooManyRequests<T> value) tooManyRequests,
    required TResult Function(_CacheError<T> value) cacheError,
    required TResult Function(_NoData<T> value) noData,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Timeout<T> value)? timeout,
    TResult? Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CacheError<T> value)? cacheError,
    TResult? Function(_NoData<T> value)? noData,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Timeout<T> value)? timeout,
    TResult Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult Function(_CacheError<T> value)? cacheError,
    TResult Function(_NoData<T> value)? noData,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout<T> implements Failure<T> {
  const factory _Timeout() = _$TimeoutImpl<T>;
}

/// @nodoc
abstract class _$$TooManyRequestsImplCopyWith<T, $Res> {
  factory _$$TooManyRequestsImplCopyWith(_$TooManyRequestsImpl<T> value,
          $Res Function(_$TooManyRequestsImpl<T>) then) =
      __$$TooManyRequestsImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TooManyRequestsImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$TooManyRequestsImpl<T>>
    implements _$$TooManyRequestsImplCopyWith<T, $Res> {
  __$$TooManyRequestsImplCopyWithImpl(_$TooManyRequestsImpl<T> _value,
      $Res Function(_$TooManyRequestsImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TooManyRequestsImpl<T> implements _TooManyRequests<T> {
  const _$TooManyRequestsImpl();

  @override
  String toString() {
    return 'Failure<$T>.tooManyRequests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TooManyRequestsImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(String? message, int code) serverError,
    required TResult Function() timeout,
    required TResult Function() tooManyRequests,
    required TResult Function() cacheError,
    required TResult Function() noData,
    required TResult Function(String? message) internalError,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(String? message, int code)? serverError,
    TResult? Function()? timeout,
    TResult? Function()? tooManyRequests,
    TResult? Function()? cacheError,
    TResult? Function()? noData,
    TResult? Function(String? message)? internalError,
  }) {
    return tooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(String? message, int code)? serverError,
    TResult Function()? timeout,
    TResult Function()? tooManyRequests,
    TResult Function()? cacheError,
    TResult Function()? noData,
    TResult Function(String? message)? internalError,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Timeout<T> value) timeout,
    required TResult Function(_TooManyRequests<T> value) tooManyRequests,
    required TResult Function(_CacheError<T> value) cacheError,
    required TResult Function(_NoData<T> value) noData,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Timeout<T> value)? timeout,
    TResult? Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CacheError<T> value)? cacheError,
    TResult? Function(_NoData<T> value)? noData,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Timeout<T> value)? timeout,
    TResult Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult Function(_CacheError<T> value)? cacheError,
    TResult Function(_NoData<T> value)? noData,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class _TooManyRequests<T> implements Failure<T> {
  const factory _TooManyRequests() = _$TooManyRequestsImpl<T>;
}

/// @nodoc
abstract class _$$CacheErrorImplCopyWith<T, $Res> {
  factory _$$CacheErrorImplCopyWith(
          _$CacheErrorImpl<T> value, $Res Function(_$CacheErrorImpl<T>) then) =
      __$$CacheErrorImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CacheErrorImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$CacheErrorImpl<T>>
    implements _$$CacheErrorImplCopyWith<T, $Res> {
  __$$CacheErrorImplCopyWithImpl(
      _$CacheErrorImpl<T> _value, $Res Function(_$CacheErrorImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheErrorImpl<T> implements _CacheError<T> {
  const _$CacheErrorImpl();

  @override
  String toString() {
    return 'Failure<$T>.cacheError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheErrorImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(String? message, int code) serverError,
    required TResult Function() timeout,
    required TResult Function() tooManyRequests,
    required TResult Function() cacheError,
    required TResult Function() noData,
    required TResult Function(String? message) internalError,
  }) {
    return cacheError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(String? message, int code)? serverError,
    TResult? Function()? timeout,
    TResult? Function()? tooManyRequests,
    TResult? Function()? cacheError,
    TResult? Function()? noData,
    TResult? Function(String? message)? internalError,
  }) {
    return cacheError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(String? message, int code)? serverError,
    TResult Function()? timeout,
    TResult Function()? tooManyRequests,
    TResult Function()? cacheError,
    TResult Function()? noData,
    TResult Function(String? message)? internalError,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Timeout<T> value) timeout,
    required TResult Function(_TooManyRequests<T> value) tooManyRequests,
    required TResult Function(_CacheError<T> value) cacheError,
    required TResult Function(_NoData<T> value) noData,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Timeout<T> value)? timeout,
    TResult? Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CacheError<T> value)? cacheError,
    TResult? Function(_NoData<T> value)? noData,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return cacheError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Timeout<T> value)? timeout,
    TResult Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult Function(_CacheError<T> value)? cacheError,
    TResult Function(_NoData<T> value)? noData,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class _CacheError<T> implements Failure<T> {
  const factory _CacheError() = _$CacheErrorImpl<T>;
}

/// @nodoc
abstract class _$$NoDataImplCopyWith<T, $Res> {
  factory _$$NoDataImplCopyWith(
          _$NoDataImpl<T> value, $Res Function(_$NoDataImpl<T>) then) =
      __$$NoDataImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoDataImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$NoDataImpl<T>>
    implements _$$NoDataImplCopyWith<T, $Res> {
  __$$NoDataImplCopyWithImpl(
      _$NoDataImpl<T> _value, $Res Function(_$NoDataImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoDataImpl<T> implements _NoData<T> {
  const _$NoDataImpl();

  @override
  String toString() {
    return 'Failure<$T>.noData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDataImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(String? message, int code) serverError,
    required TResult Function() timeout,
    required TResult Function() tooManyRequests,
    required TResult Function() cacheError,
    required TResult Function() noData,
    required TResult Function(String? message) internalError,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(String? message, int code)? serverError,
    TResult? Function()? timeout,
    TResult? Function()? tooManyRequests,
    TResult? Function()? cacheError,
    TResult? Function()? noData,
    TResult? Function(String? message)? internalError,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(String? message, int code)? serverError,
    TResult Function()? timeout,
    TResult Function()? tooManyRequests,
    TResult Function()? cacheError,
    TResult Function()? noData,
    TResult Function(String? message)? internalError,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Timeout<T> value) timeout,
    required TResult Function(_TooManyRequests<T> value) tooManyRequests,
    required TResult Function(_CacheError<T> value) cacheError,
    required TResult Function(_NoData<T> value) noData,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Timeout<T> value)? timeout,
    TResult? Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CacheError<T> value)? cacheError,
    TResult? Function(_NoData<T> value)? noData,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Timeout<T> value)? timeout,
    TResult Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult Function(_CacheError<T> value)? cacheError,
    TResult Function(_NoData<T> value)? noData,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData<T> implements Failure<T> {
  const factory _NoData() = _$NoDataImpl<T>;
}

/// @nodoc
abstract class _$$InternalErrorImplCopyWith<T, $Res> {
  factory _$$InternalErrorImplCopyWith(_$InternalErrorImpl<T> value,
          $Res Function(_$InternalErrorImpl<T>) then) =
      __$$InternalErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InternalErrorImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$InternalErrorImpl<T>>
    implements _$$InternalErrorImplCopyWith<T, $Res> {
  __$$InternalErrorImplCopyWithImpl(_$InternalErrorImpl<T> _value,
      $Res Function(_$InternalErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InternalErrorImpl<T>(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InternalErrorImpl<T> implements _InternalError<T> {
  const _$InternalErrorImpl({required this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure<$T>.internalError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalErrorImplCopyWith<T, _$InternalErrorImpl<T>> get copyWith =>
      __$$InternalErrorImplCopyWithImpl<T, _$InternalErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(String? message, int code) serverError,
    required TResult Function() timeout,
    required TResult Function() tooManyRequests,
    required TResult Function() cacheError,
    required TResult Function() noData,
    required TResult Function(String? message) internalError,
  }) {
    return internalError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(String? message, int code)? serverError,
    TResult? Function()? timeout,
    TResult? Function()? tooManyRequests,
    TResult? Function()? cacheError,
    TResult? Function()? noData,
    TResult? Function(String? message)? internalError,
  }) {
    return internalError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(String? message, int code)? serverError,
    TResult Function()? timeout,
    TResult Function()? tooManyRequests,
    TResult Function()? cacheError,
    TResult Function()? noData,
    TResult Function(String? message)? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_Timeout<T> value) timeout,
    required TResult Function(_TooManyRequests<T> value) tooManyRequests,
    required TResult Function(_CacheError<T> value) cacheError,
    required TResult Function(_NoData<T> value) noData,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_Timeout<T> value)? timeout,
    TResult? Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult? Function(_CacheError<T> value)? cacheError,
    TResult? Function(_NoData<T> value)? noData,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_Timeout<T> value)? timeout,
    TResult Function(_TooManyRequests<T> value)? tooManyRequests,
    TResult Function(_CacheError<T> value)? cacheError,
    TResult Function(_NoData<T> value)? noData,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class _InternalError<T> implements Failure<T> {
  const factory _InternalError({required final String? message}) =
      _$InternalErrorImpl<T>;

  String? get message;
  @JsonKey(ignore: true)
  _$$InternalErrorImplCopyWith<T, _$InternalErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
