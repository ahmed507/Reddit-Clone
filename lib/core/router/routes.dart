enum Routes {
  splash,
  auth,
  login,
  register,
  home,
  communities,
  create,
  chat,
  inbox,
}

extension RoutesExt on Routes {
  String get toName {
    switch (this) {
      case Routes.splash:
        return 'Splash';
      case Routes.auth:
        return 'Auth';
      case Routes.login:
        return 'Login';
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
    }
  }

  String get toFullPath {
    switch (this) {
      case Routes.splash:
        return '/splash';
      case Routes.auth:
        return '/auth';
      case Routes.login:
        return '/login';
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
    }
  }
}