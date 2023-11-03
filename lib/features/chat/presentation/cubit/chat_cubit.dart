import 'package:bloc/bloc.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/chat/domain/entities/chat_entity.dart';
import 'package:valotod_app/features/chat/domain/usecases/chat_usecase.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(
    this.getChatUsecase,
  ) : super(ChatInitial());

  final ChatUsecase getChatUsecase;

  Future<void> getChats() async {
    emit(ChatLoading());

    final failureOrSuccess = await getChatUsecase.call(NoParams());

    failureOrSuccess.fold(
      (error) => emit(ChatFailure(error.message)),
      (data) => emit(ChatSuccess(data)),
    );
  }
}
