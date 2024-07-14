import 'package:reddit_clone/core/error/failures.dart';

class UnexpectedValueError<T> extends Error {
  final Failure<T> valueFailure;

  UnexpectedValueError({required this.valueFailure});

  @override
  String toString() {
    return 'UnexpectedValueError{valueFailure: $valueFailure}';
  }
}
