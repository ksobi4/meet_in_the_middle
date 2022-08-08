// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:mitm4/core/pages/user_page.dart';
import 'package:mitm4/features/auth/presentation/auth_wrapper.dart';
import 'package:mitm4/features/home/presentation/event_page.dart';

import '../../features/firstpath/presentation/firstScreen.dart';
import '../../features/home/presentation/add_event_page.dart';
import '../../features/home/presentation/train_page.dart';
import '../../features/home/search_transfers/search_transfer_page.dart';
import '../../features/home/search_transfers/select_station_page.dart';
import '../../features/home/search_transfers/station_output_page.dart';
import '../../main_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainPage),
    AutoRoute(page: SearchTransfersPage),
    AutoRoute(page: TrainPage),
    AutoRoute(page: UserPage),
    AutoRoute(page: EventPage),
    AutoRoute(page: AddEventPage),
    AutoRoute(page: FirstScreen),
    AutoRoute(page: SelectStationPage),
    AutoRoute(page: StationOutputPage),
    AutoRoute(page: AuthWrapper, initial: true),
  ],
)
class $AppRouter {}
