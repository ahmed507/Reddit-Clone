import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:reddit_clone/core/common/bloc/nav/nav_cubit.dart';
import 'package:reddit_clone/core/common/constants.dart';
import 'package:reddit_clone/generated/assets.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, NavState>(
      buildWhen: (previous, current) =>
          previous.currentHome != current.currentHome ||
          previous.isExpanded != current.isExpanded,
      builder: (context, state) {
        return PopupMenuButton<String>(
          popUpAnimationStyle: AnimationStyle(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
          ),
          onSelected: (String value) {
            HomeHeader headerValue = HomeHeader.values.firstWhere(
              (element) => element.name == value,
            );
            context.read<NavCubit>().updateHome(headerValue);
            context.read<NavCubit>().updateExpanded(false);
            context.go(
              headerValue.route,
            );
          },
          onOpened: () {
            context.read<NavCubit>().updateExpanded(true);
          },
          onCanceled: () {
            context.read<NavCubit>().updateExpanded(false);
          },
          offset: const Offset(-1, 40),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: HomeHeader.home.name,
              child: _menuItem(
                title: HomeHeader.home.name,
                icon: HomeHeader.home.icon,
              ),
            ),
            PopupMenuItem<String>(
              value: HomeHeader.popular.name,
              child: _menuItem(
                title: HomeHeader.popular.name,
                icon: HomeHeader.popular.icon,
              ),
            ),
            PopupMenuItem<String>(
              value: HomeHeader.watch.name,
              child: _menuItem(
                title: HomeHeader.watch.name,
                icon: HomeHeader.watch.icon,
              ),
            ),
            PopupMenuItem<String>(
              value: HomeHeader.latest.name,
              child: _menuItem(
                title: HomeHeader.latest.name,
                icon: HomeHeader.latest.icon,
              ),
            ),
          ],
          child: Material(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                state.currentHome == HomeHeader.home
                    ? SvgPicture.asset(
                        Assets.iconsRedditWordmark,
                        width: 70,
                      )
                    : Text(state.currentHome.name,
                        style: Theme.of(context).textTheme.titleLarge),
                Icon(
                  state.isExpanded
                      ? EvaIcons.chevron_up
                      : EvaIcons.chevron_down,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _menuItem({
    required String title,
    required IconData icon,
  }) =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            icon,
          ),
          const SizedBox(width: 8),
          Text(title),
        ],
      );
}
