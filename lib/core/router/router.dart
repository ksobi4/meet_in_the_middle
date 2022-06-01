// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:mitm4/features/auth/presentation/auth_wrapper.dart';

import '../../features/home/presentation/search_transfer_page.dart';
import '../../features/home/presentation/train_page.dart';
import '../../main_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainPage),
    AutoRoute(page: SearchTransfersPage),
    AutoRoute(page: TrainPage),
    AutoRoute(page: AuthWrapper, initial: true),
  ],
)
class $AppRouter {}
