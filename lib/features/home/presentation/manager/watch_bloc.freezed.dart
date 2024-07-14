// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WatchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadVideos,
    required TResult Function(int index) changeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadVideos,
    TResult? Function(int index)? changeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadVideos,
    TResult Function(int index)? changeVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadVideos value) loadVideos,
    required TResult Function(_WatchVideo value) changeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadVideos value)? loadVideos,
    TResult? Function(_WatchVideo value)? changeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadVideos value)? loadVideos,
    TResult Function(_WatchVideo value)? changeVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchEventCopyWith<$Res> {
  factory $WatchEventCopyWith(
          WatchEvent value, $Res Function(WatchEvent) then) =
      _$WatchEventCopyWithImpl<$Res, WatchEvent>;
}

/// @nodoc
class _$WatchEventCopyWithImpl<$Res, $Val extends WatchEvent>
    implements $WatchEventCopyWith<$Res> {
  _$WatchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadVideosImplCopyWith<$Res> {
  factory _$$LoadVideosImplCopyWith(
          _$LoadVideosImpl value, $Res Function(_$LoadVideosImpl) then) =
      __$$LoadVideosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadVideosImplCopyWithImpl<$Res>
    extends _$WatchEventCopyWithImpl<$Res, _$LoadVideosImpl>
    implements _$$LoadVideosImplCopyWith<$Res> {
  __$$LoadVideosImplCopyWithImpl(
      _$LoadVideosImpl _value, $Res Function(_$LoadVideosImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadVideosImpl implements _LoadVideos {
  const _$LoadVideosImpl();

  @override
  String toString() {
    return 'WatchEvent.loadVideos()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadVideosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadVideos,
    required TResult Function(int index) changeVideo,
  }) {
    return loadVideos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadVideos,
    TResult? Function(int index)? changeVideo,
  }) {
    return loadVideos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadVideos,
    TResult Function(int index)? changeVideo,
    required TResult orElse(),
  }) {
    if (loadVideos != null) {
      return loadVideos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadVideos value) loadVideos,
    required TResult Function(_WatchVideo value) changeVideo,
  }) {
    return loadVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadVideos value)? loadVideos,
    TResult? Function(_WatchVideo value)? changeVideo,
  }) {
    return loadVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadVideos value)? loadVideos,
    TResult Function(_WatchVideo value)? changeVideo,
    required TResult orElse(),
  }) {
    if (loadVideos != null) {
      return loadVideos(this);
    }
    return orElse();
  }
}

abstract class _LoadVideos implements WatchEvent {
  const factory _LoadVideos() = _$LoadVideosImpl;
}

/// @nodoc
abstract class _$$WatchVideoImplCopyWith<$Res> {
  factory _$$WatchVideoImplCopyWith(
          _$WatchVideoImpl value, $Res Function(_$WatchVideoImpl) then) =
      __$$WatchVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$WatchVideoImplCopyWithImpl<$Res>
    extends _$WatchEventCopyWithImpl<$Res, _$WatchVideoImpl>
    implements _$$WatchVideoImplCopyWith<$Res> {
  __$$WatchVideoImplCopyWithImpl(
      _$WatchVideoImpl _value, $Res Function(_$WatchVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$WatchVideoImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WatchVideoImpl implements _WatchVideo {
  const _$WatchVideoImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'WatchEvent.changeVideo(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchVideoImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchVideoImplCopyWith<_$WatchVideoImpl> get copyWith =>
      __$$WatchVideoImplCopyWithImpl<_$WatchVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadVideos,
    required TResult Function(int index) changeVideo,
  }) {
    return changeVideo(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadVideos,
    TResult? Function(int index)? changeVideo,
  }) {
    return changeVideo?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadVideos,
    TResult Function(int index)? changeVideo,
    required TResult orElse(),
  }) {
    if (changeVideo != null) {
      return changeVideo(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadVideos value) loadVideos,
    required TResult Function(_WatchVideo value) changeVideo,
  }) {
    return changeVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadVideos value)? loadVideos,
    TResult? Function(_WatchVideo value)? changeVideo,
  }) {
    return changeVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadVideos value)? loadVideos,
    TResult Function(_WatchVideo value)? changeVideo,
    required TResult orElse(),
  }) {
    if (changeVideo != null) {
      return changeVideo(this);
    }
    return orElse();
  }
}

abstract class _WatchVideo implements WatchEvent {
  const factory _WatchVideo({required final int index}) = _$WatchVideoImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$WatchVideoImplCopyWith<_$WatchVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WatchState {
  List<Video> get videos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get prevVideo => throw _privateConstructorUsedError;
  int get actualScreen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchStateCopyWith<WatchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchStateCopyWith<$Res> {
  factory $WatchStateCopyWith(
          WatchState value, $Res Function(WatchState) then) =
      _$WatchStateCopyWithImpl<$Res, WatchState>;
  @useResult
  $Res call(
      {List<Video> videos,
      bool isLoading,
      bool hasError,
      String errorMessage,
      int prevVideo,
      int actualScreen});
}

/// @nodoc
class _$WatchStateCopyWithImpl<$Res, $Val extends WatchState>
    implements $WatchStateCopyWith<$Res> {
  _$WatchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = null,
    Object? prevVideo = null,
    Object? actualScreen = null,
  }) {
    return _then(_value.copyWith(
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      prevVideo: null == prevVideo
          ? _value.prevVideo
          : prevVideo // ignore: cast_nullable_to_non_nullable
              as int,
      actualScreen: null == actualScreen
          ? _value.actualScreen
          : actualScreen // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WatchStateImplCopyWith<$Res>
    implements $WatchStateCopyWith<$Res> {
  factory _$$WatchStateImplCopyWith(
          _$WatchStateImpl value, $Res Function(_$WatchStateImpl) then) =
      __$$WatchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Video> videos,
      bool isLoading,
      bool hasError,
      String errorMessage,
      int prevVideo,
      int actualScreen});
}

/// @nodoc
class __$$WatchStateImplCopyWithImpl<$Res>
    extends _$WatchStateCopyWithImpl<$Res, _$WatchStateImpl>
    implements _$$WatchStateImplCopyWith<$Res> {
  __$$WatchStateImplCopyWithImpl(
      _$WatchStateImpl _value, $Res Function(_$WatchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = null,
    Object? prevVideo = null,
    Object? actualScreen = null,
  }) {
    return _then(_$WatchStateImpl(
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      prevVideo: null == prevVideo
          ? _value.prevVideo
          : prevVideo // ignore: cast_nullable_to_non_nullable
              as int,
      actualScreen: null == actualScreen
          ? _value.actualScreen
          : actualScreen // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WatchStateImpl implements _WatchState {
  const _$WatchStateImpl(
      {required final List<Video> videos,
      required this.isLoading,
      required this.hasError,
      required this.errorMessage,
      required this.prevVideo,
      required this.actualScreen})
      : _videos = videos;

  final List<Video> _videos;
  @override
  List<Video> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String errorMessage;
  @override
  final int prevVideo;
  @override
  final int actualScreen;

  @override
  String toString() {
    return 'WatchState(videos: $videos, isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage, prevVideo: $prevVideo, actualScreen: $actualScreen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchStateImpl &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.prevVideo, prevVideo) ||
                other.prevVideo == prevVideo) &&
            (identical(other.actualScreen, actualScreen) ||
                other.actualScreen == actualScreen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_videos),
      isLoading,
      hasError,
      errorMessage,
      prevVideo,
      actualScreen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchStateImplCopyWith<_$WatchStateImpl> get copyWith =>
      __$$WatchStateImplCopyWithImpl<_$WatchStateImpl>(this, _$identity);
}

abstract class _WatchState implements WatchState {
  const factory _WatchState(
      {required final List<Video> videos,
      required final bool isLoading,
      required final bool hasError,
      required final String errorMessage,
      required final int prevVideo,
      required final int actualScreen}) = _$WatchStateImpl;

  @override
  List<Video> get videos;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get errorMessage;
  @override
  int get prevVideo;
  @override
  int get actualScreen;
  @override
  @JsonKey(ignore: true)
  _$$WatchStateImplCopyWith<_$WatchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
