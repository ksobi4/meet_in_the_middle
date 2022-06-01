import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:mitm4/features/auth/service/auth_local_service.dart';
import 'package:mitm4/features/auth/service/auth_service.dart';
import 'package:mitm4/features/home/service/home_service.dart';
import '../features/home/presentation/train_events_bloc/train_events_bloc.dart';
import '../features/home/presentation/train_members_bloc/train_members_bloc.dart';
import '../features/home/presentation/transfers_bloc/transfers_bloc.dart';
import './config/config.dart' as config;
import 'http_client.dart';

// import 'core/config.dart' as config;
final sl = GetIt.instance;

Future<void> setupGetIt() async {
  //services
  sl.registerLazySingleton<HomeService>(() => HomeService(client: sl()));
  sl.registerLazySingleton<AuthService>(
      () => AuthService(FirebaseAuth.instance, AuthLocalService()));

  //BLoC
  sl.registerLazySingleton<TransfersBloc>(() => TransfersBloc(sl()));
  sl.registerLazySingleton<TrainEventsBloc>(() => TrainEventsBloc(sl()));
  sl.registerLazySingleton<TrainMembersBloc>(() => TrainMembersBloc(sl()));

  //other
  sl.registerLazySingleton<Box>(() => Hive.box(config.hiveBoxName));

  sl.registerLazySingleton<HttpClient>(() => HttpClient());
}
