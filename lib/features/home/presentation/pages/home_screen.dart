import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/core/common/widgets/custom_indicator_builder.dart';
import 'package:reddit_clone/core/common/widgets/splash.dart';
import 'package:reddit_clone/core/injection/injection.dart';
import 'package:reddit_clone/features/home/presentation/manager/home/home_bloc.dart';
import 'package:reddit_clone/features/home/presentation/widgets/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _defaultBuilder(
          BuildContext context, Widget child, IndicatorController controller) =>
      child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<HomeBloc>()..add(const HomeEvent.fetchPosts()),
      child: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) =>
            previous.isLoading != current.isLoading ||
            previous.posts != current.posts ||
            previous.failure != current.failure,
        builder: (context, state) {
          if (state.isLoading || state.posts.isEmpty) {
            return const Splash();
          }
          if (state.failure != null) {
            return Scaffold(
              body: Center(
                child: Text(
                  state.failure!.maybeWhen(
                      serverError: (message, code) => message ?? '',
                      orElse: () => 'An error occurred'),
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            );
          }
          return CustomRefreshIndicator(
            autoRebuild: false,
            onRefresh: () async {
              await Future<void>.delayed(const Duration(seconds: 2));
              context.read<HomeBloc>().add(const HomeEvent.fetchPosts());
            },
            builder: (context, child, controller) => CustomIndicatorBuilder(
              controller: controller,
              child: child,
            ),
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: Colors.white12,
                height: 0.1,
              ),
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                return PostWidget(
                    post: state.posts[index],
                    onTapComment: () {},
                    onTapShare: () {},
                    onTapVoteSave: () {});
              },
            ),
          );
        },
      ),
    );
  }
}
