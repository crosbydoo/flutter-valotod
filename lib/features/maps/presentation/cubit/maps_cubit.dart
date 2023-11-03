import 'package:bloc/bloc.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_detail_entity.dart';
import 'package:valotod_app/features/maps/domain/entities/maps_entity.dart';
import 'package:valotod_app/features/maps/domain/usecases/maps_detail_usecase.dart';
import 'package:valotod_app/features/maps/domain/usecases/maps_usecase.dart';

part 'maps_state.dart';

class MapsCubit extends Cubit<MapsState> {
  MapsCubit(this.mapsUsecase, this.mapsDetailUsecase) : super(MapsInitial());
  final MapsUsecase mapsUsecase;
  final MapsDetailUsecase mapsDetailUsecase;

  Future<void> getMaps() async {
    emit(MapsLoading());

    final failureOrSuccess = await mapsUsecase.call(NoParams());

    if (isClosed) return;
    failureOrSuccess.fold(
      (error) => emit(MapsFailure(error.message)),
      (data) => emit(MapsSuccess(data)),
    );
  }

  Future<void> getMapsDetail(String uuid) async {
    emit(MapsLoading());

    final failureOrSuccess = await mapsDetailUsecase.call(uuid);

    if (isClosed) return;
    failureOrSuccess.fold(
      (error) => emit(MapsFailure(error.message)),
      (data) => emit(MapsDetailSuccess(data)),
    );
  }
}
