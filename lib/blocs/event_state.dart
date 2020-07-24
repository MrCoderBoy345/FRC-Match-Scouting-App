import 'package:equatable/equatable.dart';
import 'package:frc_scouting/models/models.dart';
import 'package:meta/meta.dart';

abstract class EventState extends Equatable {
  const EventState();

  @override
  List<Object> get props => [];
}

class EventInitial extends EventState {}

class EventLoadInProgress extends EventState {}

class EventLoadSuccess extends EventState {
  final List<Event> events;

  const EventLoadSuccess({@required this.events}) : assert(events != null);

  @override
  List<Object> get props => [events];
}

class EventLoadFailure extends EventState {}