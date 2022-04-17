// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../domain/entities/history_booking.dart';

part 'histories_state.freezed.dart';

@freezed
class HistoriesState with _$HistoriesState {
  const HistoriesState._();

  const factory HistoriesState({
    required List<HistoryBooking> historiesBooking,
  }) = _HistoriesState;

  factory HistoriesState.initial() =>
      const HistoriesState(historiesBooking: []);
}
