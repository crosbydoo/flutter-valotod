part of 'agent_cubit.dart';

abstract class AgentState {}

final class AgentInitial extends AgentState {}

final class AgentLoading extends AgentState {}

final class AgentSuccess extends AgentState {
  AgentSuccess(this.result);

  final AgentEntity result;
}

final class AgentDetailSuccess extends AgentState {
  AgentDetailSuccess(this.result);

  final AgentDetailEntity result;
}

final class AgentFailure extends AgentState {
  AgentFailure(this.message);

  final String message;
}
