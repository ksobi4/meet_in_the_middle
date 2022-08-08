import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../model/train_event.dart';
import '../../service/home_service.dart';

part 'is_event_member_bloc.freezed.dart';
part 'is_event_member_event.dart';
part 'is_event_member_state.dart';

class IsEventMemberBloc extends Bloc<IsEventMemberEvent, IsEventMemberState> {
  final HomeService homeService;
  IsEventMemberBloc(
    this.homeService,
  ) : super(const IsEventMemberState.init()) {
    on<IsEventMemberEvent>(_onGet);
  }

  FutureOr<void> _onGet(
      IsEventMemberEvent event, Emitter<IsEventMemberState> emit) async {
    emit(const IsEventMemberState.loading());

    Either<Failure, bool> failureOrBool =
        await homeService.isEventMember(event.userId, event.event);

    emit(_handlerGet(failureOrBool));
  }

  IsEventMemberState _handlerGet(Either<Failure, bool> failureOrBool) {
    return failureOrBool.fold(
        (failure) => IsEventMemberState.error(failure.message),
        (isEventMember) => IsEventMemberState.loaded(isEventMember));
  }
}
