import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'playercard_state.dart';

class PlayercardCubit extends Cubit<PlayercardState> {
  PlayercardCubit() : super(PlayercardInitial());
}
