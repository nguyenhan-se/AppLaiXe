part of 'destinations_provider.dart';

@freezed
class DestinationsState with _$DestinationsState {
  const DestinationsState._();

  const factory DestinationsState({
    required List<Destination> destinations,
  }) = _DestinationsState;

  factory DestinationsState.initial() =>
      const DestinationsState(destinations: []);
}
