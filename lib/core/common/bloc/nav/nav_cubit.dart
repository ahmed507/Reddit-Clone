import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/core/common/constants.dart';

part 'nav_cubit.freezed.dart';
part 'nav_state.dart';

@lazySingleton
class NavCubit extends Cubit<NavState> {
  NavCubit() : super(NavState.initial());

  void updateHome(HomeHeader home) {
    emit(state.copyWith(currentHome: home));
  }

  void updateIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  void updateExpanded(bool isExpanded) {
    emit(state.copyWith(isExpanded: isExpanded));
  }

  void reset() {
    emit(NavState.initial());
  }
}
