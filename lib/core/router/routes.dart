enum Routes {
  splash,
  register,
  home,
  communities,
  create,
  chat,
  inbox,
  popular,
  watch,
  latest,
  postDetails,
}

extension RoutesExt on Routes {
  String get toName {
    switch (this) {
      case Routes.splash:
        return 'Splash';
      case Routes.register:
        return 'Register';
      case Routes.home:
        return 'Home';
      case Routes.communities:
        return 'Communities';
      case Routes.create:
        return 'Create';
      case Routes.chat:
        return 'Chat';
      case Routes.inbox:
        return 'Inbox';
      case Routes.popular:
        return 'Popular';
      case Routes.watch:
        return 'Watch';
      case Routes.latest:
        return 'Latest';
      case Routes.postDetails:
        return 'PostDetails';
    }
  }

  String get toFullPath {
    switch (this) {
      case Routes.splash:
        return '/splash';
      case Routes.register:
        return '/register';
      case Routes.home:
        return '/home';
      case Routes.communities:
        return '/communities';
      case Routes.create:
        return '/create';
      case Routes.chat:
        return '/chat';
      case Routes.inbox:
        return '/inbox';
      case Routes.popular:
        return '/popular';
      case Routes.watch:
        return '/watch';
      case Routes.latest:
        return '/latest';
      case Routes.postDetails:
        return '/postDetails';
    }
  }
}
