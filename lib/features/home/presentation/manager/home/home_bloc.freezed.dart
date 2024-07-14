// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPosts,
    required TResult Function(String postId) fetchPostDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPosts,
    TResult? Function(String postId)? fetchPostDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPosts,
    TResult Function(String postId)? fetchPostDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_FetchPostDetail value) fetchPostDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPosts value)? fetchPosts,
    TResult? Function(_FetchPostDetail value)? fetchPostDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_FetchPostDetail value)? fetchPostDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchPostsImplCopyWith<$Res> {
  factory _$$FetchPostsImplCopyWith(
          _$FetchPostsImpl value, $Res Function(_$FetchPostsImpl) then) =
      __$$FetchPostsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPostsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchPostsImpl>
    implements _$$FetchPostsImplCopyWith<$Res> {
  __$$FetchPostsImplCopyWithImpl(
      _$FetchPostsImpl _value, $Res Function(_$FetchPostsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchPostsImpl implements _FetchPosts {
  const _$FetchPostsImpl();

  @override
  String toString() {
    return 'HomeEvent.fetchPosts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPostsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPosts,
    required TResult Function(String postId) fetchPostDetail,
  }) {
    return fetchPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPosts,
    TResult? Function(String postId)? fetchPostDetail,
  }) {
    return fetchPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPosts,
    TResult Function(String postId)? fetchPostDetail,
    required TResult orElse(),
  }) {
    if (fetchPosts != null) {
      return fetchPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_FetchPostDetail value) fetchPostDetail,
  }) {
    return fetchPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPosts value)? fetchPosts,
    TResult? Function(_FetchPostDetail value)? fetchPostDetail,
  }) {
    return fetchPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_FetchPostDetail value)? fetchPostDetail,
    required TResult orElse(),
  }) {
    if (fetchPosts != null) {
      return fetchPosts(this);
    }
    return orElse();
  }
}

abstract class _FetchPosts implements HomeEvent {
  const factory _FetchPosts() = _$FetchPostsImpl;
}

/// @nodoc
abstract class _$$FetchPostDetailImplCopyWith<$Res> {
  factory _$$FetchPostDetailImplCopyWith(_$FetchPostDetailImpl value,
          $Res Function(_$FetchPostDetailImpl) then) =
      __$$FetchPostDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$FetchPostDetailImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchPostDetailImpl>
    implements _$$FetchPostDetailImplCopyWith<$Res> {
  __$$FetchPostDetailImplCopyWithImpl(
      _$FetchPostDetailImpl _value, $Res Function(_$FetchPostDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$FetchPostDetailImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchPostDetailImpl implements _FetchPostDetail {
  const _$FetchPostDetailImpl({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'HomeEvent.fetchPostDetail(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPostDetailImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPostDetailImplCopyWith<_$FetchPostDetailImpl> get copyWith =>
      __$$FetchPostDetailImplCopyWithImpl<_$FetchPostDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPosts,
    required TResult Function(String postId) fetchPostDetail,
  }) {
    return fetchPostDetail(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPosts,
    TResult? Function(String postId)? fetchPostDetail,
  }) {
    return fetchPostDetail?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPosts,
    TResult Function(String postId)? fetchPostDetail,
    required TResult orElse(),
  }) {
    if (fetchPostDetail != null) {
      return fetchPostDetail(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_FetchPostDetail value) fetchPostDetail,
  }) {
    return fetchPostDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPosts value)? fetchPosts,
    TResult? Function(_FetchPostDetail value)? fetchPostDetail,
  }) {
    return fetchPostDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_FetchPostDetail value)? fetchPostDetail,
    required TResult orElse(),
  }) {
    if (fetchPostDetail != null) {
      return fetchPostDetail(this);
    }
    return orElse();
  }
}

abstract class _FetchPostDetail implements HomeEvent {
  const factory _FetchPostDetail({required final String postId}) =
      _$FetchPostDetailImpl;

  String get postId;
  @JsonKey(ignore: true)
  _$$FetchPostDetailImplCopyWith<_$FetchPostDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<PostEntity> get posts => throw _privateConstructorUsedError;
  PostDetailEntity? get postDetail => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure<dynamic>? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<PostEntity> posts,
      PostDetailEntity? postDetail,
      bool isLoading,
      Failure<dynamic>? failure});

  $FailureCopyWith<dynamic, $Res>? get failure;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? postDetail = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
      postDetail: freezed == postDetail
          ? _value.postDetail
          : postDetail // ignore: cast_nullable_to_non_nullable
              as PostDetailEntity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<dynamic, $Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<dynamic, $Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PostEntity> posts,
      PostDetailEntity? postDetail,
      bool isLoading,
      Failure<dynamic>? failure});

  @override
  $FailureCopyWith<dynamic, $Res>? get failure;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? postDetail = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$HomeStateImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
      postDetail: freezed == postDetail
          ? _value.postDetail
          : postDetail // ignore: cast_nullable_to_non_nullable
              as PostDetailEntity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure<dynamic>?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required final List<PostEntity> posts,
      this.postDetail,
      required this.isLoading,
      required this.failure})
      : _posts = posts;

  final List<PostEntity> _posts;
  @override
  List<PostEntity> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final PostDetailEntity? postDetail;
  @override
  final bool isLoading;
  @override
  final Failure<dynamic>? failure;

  @override
  String toString() {
    return 'HomeState(posts: $posts, postDetail: $postDetail, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.postDetail, postDetail) ||
                other.postDetail == postDetail) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      postDetail,
      isLoading,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<PostEntity> posts,
      final PostDetailEntity? postDetail,
      required final bool isLoading,
      required final Failure<dynamic>? failure}) = _$HomeStateImpl;

  @override
  List<PostEntity> get posts;
  @override
  PostDetailEntity? get postDetail;
  @override
  bool get isLoading;
  @override
  Failure<dynamic>? get failure;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
