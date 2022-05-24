// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:mitm4/features/auth/presentation/auth_wrapper.dart';

import '../../features/home/presentation/add_transfer_page.dart';
import '../../main_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainPage),
    AutoRoute(page: AddTransferPage),
    AutoRoute(page: AuthWrapper, initial: true),
  ],
)
class $AppRouter {}
