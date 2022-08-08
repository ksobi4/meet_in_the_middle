import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:mitm4/features/auth/service/auth_local_service.dart';
import 'package:mitm4/features/auth/service/auth_service.dart';
import 'package:mitm4/features/delay/bloc/delay_bloc.dart';
import 'package:mitm4/features/home/service/home_service.dart';
import '../features/delay/service/delay_service.dart';
import '../features/home/blocs/is_event_member_bloc/is_event_member_bloc.dart';
import '../features/home/blocs/is_train_in_db_bloc/is_train_in_db_bloc.dart';
import '../features/home/blocs/is_train_member_bloc/is_train_member_bloc.dart';
import '../features/home/blocs/train_events_bloc/train_events_bloc.dart';
import '../features/home/blocs/train_members_bloc/train_members_bloc.dart';
import '../features/home/blocs/transfers_bloc/transfers_bloc.dart';
import '../features/home/blocs/user_trains_bloc/user_trains_bloc.dart';
import './config/config.dart' as config;
import 'http_client.dart';

// import 'core/config.dart' as config;
final sl = GetIt.instance;

Future<void> setupGetIt() async {
  //services
  sl.registerLazySingleton<HomeService>(() => HomeService(client: sl()));
  sl.registerLazySingleton<DelayService>(() => DelayService(client: sl()));
  sl.registerLazySingleton<AuthService>(
      () => AuthService(FirebaseAuth.instance, AuthLocalService()));

  //BLoC
  sl.registerLazySingleton<TransfersBloc>(() => TransfersBloc(sl()));
  sl.registerLazySingleton<TrainEventsBloc>(() => TrainEventsBloc(sl()));
  sl.registerLazySingleton<TrainMembersBloc>(() => TrainMembersBloc(sl()));
  sl.registerLazySingleton<IsTrainMemberBloc>(() => IsTrainMemberBloc(sl()));
  sl.registerLazySingleton<UserTrainsBloc>(() => UserTrainsBloc(sl()));
  sl.registerLazySingleton<IsTrainInDbBloc>(() => IsTrainInDbBloc(sl()));
  sl.registerLazySingleton<IsEventMemberBloc>(() => IsEventMemberBloc(sl()));
  sl.registerLazySingleton<DelayBloc>(() => DelayBloc(ds: sl()));

  //other
  sl.registerLazySingleton<Box>(() => Hive.box(config.hiveBoxName));

  sl.registerLazySingleton<HttpClient>(() => HttpClient());

  // sl.registerLazySingleton(() => null)
}
