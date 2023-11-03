import 'package:bloc/bloc.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_detail_entity.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_entity.dart';
import 'package:valotod_app/features/armory/domain/usecases/agent_detail_usecase.dart';
import 'package:valotod_app/features/armory/domain/usecases/agent_usecase.dart';

part 'agent_state.dart';

class AgentCubit extends Cubit<AgentState> {
  AgentCubit(this.agentUsecase, this.agentDetailUsecase)
      : super(AgentInitial());

  final AgentUsecase agentUsecase;
  final AgentDetailUsecase agentDetailUsecase;

  Future<void> getAgents() async {
    emit(AgentLoading());

    await Future<void>.delayed(const Duration(seconds: 3));
    final failureOrSuccess = await agentUsecase.call(NoParams());

    if (isClosed) return;
    failureOrSuccess.fold(
      (error) => emit(AgentFailure(error.message)),
      (data) => emit(AgentSuccess(data)),
    );
  }

  Future<void> getAgentDetail(String uuid) async {
    emit(AgentLoading());

    final failureOrSuccess = await agentDetailUsecase.call(uuid);

    // if (isClosed) return;
    failureOrSuccess.fold(
      (error) => emit(AgentFailure(error.message)),
      (data) => emit(AgentDetailSuccess(data)),
    );
  }
}
