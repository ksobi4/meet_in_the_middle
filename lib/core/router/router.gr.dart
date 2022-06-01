// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../features/auth/presentation/auth_wrapper.dart' as _i6;
import '../../features/home/model/train_event.dart' as _i11;
import '../../features/home/model/transfers.dart' as _i9;
import '../../features/home/model/user.dart' as _i10;
import '../../features/home/presentation/event_page.dart' as _i5;
import '../../features/home/presentation/search_transfer_page.dart' as _i2;
import '../../features/home/presentation/train_page.dart' as _i3;
import '../../features/home/presentation/user_page.dart' as _i4;
import '../../main_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    SearchTransfersPageRoute.name: (routeData) {
      final args = routeData.argsAs<SearchTransfersPageRouteArgs>(
          orElse: () => const SearchTransfersPageRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SearchTransfersPage(key: args.key));
    },
    TrainPageRoute.name: (routeData) {
      final args = routeData.argsAs<TrainPageRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.TrainPage(key: args.key, train: args.train));
    },
    UserPageRoute.name: (routeData) {
      final args = routeData.argsAs<UserPageRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.UserPage(key: args.key, user: args.user));
    },
    EventPageRoute.name: (routeData) {
      final args = routeData.argsAs<EventPageRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.EventPage(key: args.key, event: args.event));
    },
    AuthWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<AuthWrapperRouteArgs>(
          orElse: () => const AuthWrapperRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.AuthWrapper(key: args.key));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(MainPageRoute.name, path: '/main-page'),
        _i7.RouteConfig(SearchTransfersPageRoute.name,
            path: '/search-transfers-page'),
        _i7.RouteConfig(TrainPageRoute.name, path: '/train-page'),
        _i7.RouteConfig(UserPageRoute.name, path: '/user-page'),
        _i7.RouteConfig(EventPageRoute.name, path: '/event-page'),
        _i7.RouteConfig(AuthWrapperRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainPageRoute extends _i7.PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: '/main-page');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i2.SearchTransfersPage]
class SearchTransfersPageRoute
    extends _i7.PageRouteInfo<SearchTransfersPageRouteArgs> {
  SearchTransfersPageRoute({_i8.Key? key})
      : super(SearchTransfersPageRoute.name,
            path: '/search-transfers-page',
            args: SearchTransfersPageRouteArgs(key: key));

  static const String name = 'SearchTransfersPageRoute';
}

class SearchTransfersPageRouteArgs {
  const SearchTransfersPageRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'SearchTransfersPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.TrainPage]
class TrainPageRoute extends _i7.PageRouteInfo<TrainPageRouteArgs> {
  TrainPageRoute({_i8.Key? key, required _i9.Train train})
      : super(TrainPageRoute.name,
            path: '/train-page',
            args: TrainPageRouteArgs(key: key, train: train));

  static const String name = 'TrainPageRoute';
}

class TrainPageRouteArgs {
  const TrainPageRouteArgs({this.key, required this.train});

  final _i8.Key? key;

  final _i9.Train train;

  @override
  String toString() {
    return 'TrainPageRouteArgs{key: $key, train: $train}';
  }
}

/// generated route for
/// [_i4.UserPage]
class UserPageRoute extends _i7.PageRouteInfo<UserPageRouteArgs> {
  UserPageRoute({_i8.Key? key, required _i10.User user})
      : super(UserPageRoute.name,
            path: '/user-page', args: UserPageRouteArgs(key: key, user: user));

  static const String name = 'UserPageRoute';
}

class UserPageRouteArgs {
  const UserPageRouteArgs({this.key, required this.user});

  final _i8.Key? key;

  final _i10.User user;

  @override
  String toString() {
    return 'UserPageRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i5.EventPage]
class EventPageRoute extends _i7.PageRouteInfo<EventPageRouteArgs> {
  EventPageRoute({_i8.Key? key, required _i11.TrainEvent event})
      : super(EventPageRoute.name,
            path: '/event-page',
            args: EventPageRouteArgs(key: key, event: event));

  static const String name = 'EventPageRoute';
}

class EventPageRouteArgs {
  const EventPageRouteArgs({this.key, required this.event});

  final _i8.Key? key;

  final _i11.TrainEvent event;

  @override
  String toString() {
    return 'EventPageRouteArgs{key: $key, event: $event}';
  }
}

/// generated route for
/// [_i6.AuthWrapper]
class AuthWrapperRoute extends _i7.PageRouteInfo<AuthWrapperRouteArgs> {
  AuthWrapperRoute({_i8.Key? key})
      : super(AuthWrapperRoute.name,
            path: '/', args: AuthWrapperRouteArgs(key: key));

  static const String name = 'AuthWrapperRoute';
}

class AuthWrapperRouteArgs {
  const AuthWrapperRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'AuthWrapperRouteArgs{key: $key}';
  }
}
