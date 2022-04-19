// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/di/init_di.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/destination.dart';
import 'package:flutter_boilerplate_riverpod/domain/usecases/destination/destination_usecase.dart';

part 'destinations_provider.freezed.dart';
part 'destinations_state.dart';

final destinationsProvider =
    StateNotifierProvider<_DestinationsController, DestinationsState>(
  (ref) {
    return _DestinationsController(
        getDestinationsByCode: getIt<GetDestinationsByCodeUseCase>())
      ..destinationByCodeLoaded('HN-HG');
  },
);

class _DestinationsController extends StateNotifier<DestinationsState> {
  late GetDestinationsByCodeUseCase _getDestinationsByCode;

  _DestinationsController({
    required GetDestinationsByCodeUseCase getDestinationsByCode,
  }) : super(DestinationsState.initial()) {
    _getDestinationsByCode = getDestinationsByCode;
  }

  void destinationByCodeLoaded(String code) {
    final listDestination = _getDestinationsByCode(params: code);

    state = state.copyWith(destinations: listDestination);
  }
}
