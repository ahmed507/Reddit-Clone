import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/core/common/bloc/nav/nav_cubit.dart';
import 'package:reddit_clone/core/common/constants.dart';
import 'package:reddit_clone/core/router/routes.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, NavState>(
      buildWhen: (previous, current) =>
          previous.currentIndex != current.currentIndex,
      builder: (context, state) {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(MingCute.home_6_fill),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.people_outline),
              label: 'Communities',
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.plus),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.message_circle_outline),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.bell),
              label: 'Inbox',
            ),
          ],
          currentIndex: state.currentIndex,
          onTap: (index) => _onItemTapped(index, context),
        );
      },
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    BlocProvider.of<NavCubit>(context).updateIndex(index);
    switch (index) {
      case 0:
        // Navigate to Home
        if (context.read<NavCubit>().state.currentHome == HomeHeader.home) {
          context.go(Routes.home.toFullPath);
        } else if (context.read<NavCubit>().state.currentHome ==
            HomeHeader.latest) {
          context.go(Routes.latest.toFullPath);
        } else if (context.read<NavCubit>().state.currentHome ==
            HomeHeader.popular) {
          context.go(Routes.popular.toFullPath);
        } else if (context.read<NavCubit>().state.currentHome ==
            HomeHeader.watch) {
          context.go(Routes.watch.toFullPath);
        }
        break;
      case 1:
        // Navigate to Communities
        context.go('/');
        break;
      case 2:
        // Navigate to Create
        context.go(Routes.create.toFullPath);
        break;
      case 3:
        // Navigate to Chat
        context.go(Routes.chat.toFullPath);
        break;
      case 4:
        // Navigate to Inbox
        context.go(Routes.inbox.toFullPath);
        break;
    }
  }
}
