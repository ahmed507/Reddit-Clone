part of 'nav_cubit.dart';

@freezed
class NavState with _$NavState {
  const factory NavState({
    required HomeHeader currentHome,
    required int currentIndex,
    required bool isExpanded,
  }) = _NavState;

  factory NavState.initial() => const NavState(
        currentHome: HomeHeader.home,
        currentIndex: 0,
        isExpanded: false,
      );
}
