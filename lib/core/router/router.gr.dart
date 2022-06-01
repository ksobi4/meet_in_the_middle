// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../features/auth/presentation/auth_wrapper.dart' as _i4;
import '../../features/home/model/transfers.dart' as _i7;
import '../../features/home/presentation/search_transfer_page.dart' as _i2;
import '../../features/home/presentation/train_page.dart' as _i3;
import '../../main_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    SearchTransfersPageRoute.name: (routeData) {
      final args = routeData.argsAs<SearchTransfersPageRouteArgs>(
          orElse: () => const SearchTransfersPageRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SearchTransfersPage(key: args.key));
    },
    TrainPageRoute.name: (routeData) {
      final args = routeData.argsAs<TrainPageRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.TrainPage(key: args.key, train: args.train));
    },
    AuthWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<AuthWrapperRouteArgs>(
          orElse: () => const AuthWrapperRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.AuthWrapper(key: args.key));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MainPageRoute.name, path: '/main-page'),
        _i5.RouteConfig(SearchTransfersPageRoute.name,
            path: '/search-transfers-page'),
        _i5.RouteConfig(TrainPageRoute.name, path: '/train-page'),
        _i5.RouteConfig(AuthWrapperRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainPageRoute extends _i5.PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: '/main-page');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i2.SearchTransfersPage]
class SearchTransfersPageRoute
    extends _i5.PageRouteInfo<SearchTransfersPageRouteArgs> {
  SearchTransfersPageRoute({_i6.Key? key})
      : super(SearchTransfersPageRoute.name,
            path: '/search-transfers-page',
            args: SearchTransfersPageRouteArgs(key: key));

  static const String name = 'SearchTransfersPageRoute';
}

class SearchTransfersPageRouteArgs {
  const SearchTransfersPageRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'SearchTransfersPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.TrainPage]
class TrainPageRoute extends _i5.PageRouteInfo<TrainPageRouteArgs> {
  TrainPageRoute({_i6.Key? key, required _i7.Train train})
      : super(TrainPageRoute.name,
            path: '/train-page',
            args: TrainPageRouteArgs(key: key, train: train));

  static const String name = 'TrainPageRoute';
}

class TrainPageRouteArgs {
  const TrainPageRouteArgs({this.key, required this.train});

  final _i6.Key? key;

  final _i7.Train train;

  @override
  String toString() {
    return 'TrainPageRouteArgs{key: $key, train: $train}';
  }
}

/// generated route for
/// [_i4.AuthWrapper]
class AuthWrapperRoute extends _i5.PageRouteInfo<AuthWrapperRouteArgs> {
  AuthWrapperRoute({_i6.Key? key})
      : super(AuthWrapperRoute.name,
            path: '/', args: AuthWrapperRouteArgs(key: key));

  static const String name = 'AuthWrapperRoute';
}

class AuthWrapperRouteArgs {
  const AuthWrapperRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'AuthWrapperRouteArgs{key: $key}';
  }
}
