// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../features/auth/presentation/auth_wrapper.dart' as _i3;
import '../../features/home/presentation/add_transfer_page.dart' as _i2;
import '../../main_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    AddTransferPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AddTransferPage());
    },
    AuthWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<AuthWrapperRouteArgs>(
          orElse: () => const AuthWrapperRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.AuthWrapper(key: args.key));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MainPageRoute.name, path: '/main-page'),
        _i4.RouteConfig(AddTransferPageRoute.name, path: '/add-transfer-page'),
        _i4.RouteConfig(AuthWrapperRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainPageRoute extends _i4.PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: '/main-page');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i2.AddTransferPage]
class AddTransferPageRoute extends _i4.PageRouteInfo<void> {
  const AddTransferPageRoute()
      : super(AddTransferPageRoute.name, path: '/add-transfer-page');

  static const String name = 'AddTransferPageRoute';
}

/// generated route for
/// [_i3.AuthWrapper]
class AuthWrapperRoute extends _i4.PageRouteInfo<AuthWrapperRouteArgs> {
  AuthWrapperRoute({_i5.Key? key})
      : super(AuthWrapperRoute.name,
            path: '/', args: AuthWrapperRouteArgs(key: key));

  static const String name = 'AuthWrapperRoute';
}

class AuthWrapperRouteArgs {
  const AuthWrapperRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'AuthWrapperRouteArgs{key: $key}';
  }
}
