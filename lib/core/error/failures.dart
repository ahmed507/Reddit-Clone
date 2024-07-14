import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure<T> with _$Failure<T> {
  const factory Failure.noInternet() = _NoInternet;

  const factory Failure.serverError(
      {required String? message, required int code}) = _ServerError;

  const factory Failure.timeout() = _Timeout;

  const factory Failure.tooManyRequests() = _TooManyRequests;

  const factory Failure.cacheError() = _CacheError;

  const factory Failure.noData() = _NoData;

  const factory Failure.internalError({required String? message}) =
      _InternalError;
}
