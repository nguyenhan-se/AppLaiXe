// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';

@freezed
class Destination with _$Destination {
  const Destination._();

  const factory Destination({
    required String code,
    required String from,
    required String to,
    required String dateForm,
    required String dateTo,
    required double timeout,
    required int price,
  }) = _Destination;

  factory Destination.empty() => const Destination(
        code: '-',
        from: '',
        to: '',
        dateForm: '',
        dateTo: '',
        timeout: 0,
        price: 200000,
      );

  String get codeForm => code.split('-')[0];
  String get codeTo => code.split('-')[1];

  String? get validatePrice => price > 0 ? null : 'Nhập giá';
}
