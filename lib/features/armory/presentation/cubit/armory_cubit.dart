import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'armory_state.dart';

class ArmoryCubit extends Cubit<ArmoryState> {
  ArmoryCubit() : super(ArmoryInitial());
}
