import 'package:bloc/bloc.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/bundles/domain/entities/bundle_entity.dart';
import 'package:valotod_app/features/bundles/domain/usecases/bundle_usecase.dart';

part 'bundles_state.dart';

class BundlesCubit extends Cubit<BundlesState> {
  BundlesCubit(this.bundleUsecase) : super(BundlesInitial());
  final BundleUsecase bundleUsecase;

  Future<void> getBundles() async {
    emit(BundleLoading());

    final failureOrSuccess = await bundleUsecase.call(NoParams());

    if (isClosed) return;
    failureOrSuccess.fold(
      (error) => emit(BundleFailures(error.message)),
      (data) => emit(BundleSuccess(data)),
    );
  }
}
