// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booker.freezed.dart';

@freezed
class Booker with _$Booker {
  const Booker._();

  const factory Booker({
    required String name,
    required String phone,
    required String startPoint,
    required String endPoint,
    required String type,
    String? note,
  }) = _Booker;

  factory Booker.empty() =>
      const Booker(name: '', phone: '', startPoint: '', endPoint: '', type: '');
}
