part of 'user_form_provider.dart';

@freezed
class UserFormInfo with _$UserFormInfo {
  const UserFormInfo._();

  const factory UserFormInfo({
    required String name,
    required String phone,
    required String startPoint,
    required String endPoint,
    String? note,
  }) = _UserFormInfo;

  factory UserFormInfo.empty() => const UserFormInfo(
      name: '', phone: '', endPoint: '', note: '', startPoint: '');

  String? get validateName => name.isEmpty ? 'Không được trống' : null;
  String? get validatePhone => phone.isEmpty
      ? 'Không được trống'
      : phone.length < 8
          ? 'Không phải số điện thoại'
          : null;
  String? get validateStartPoint =>
      startPoint.isEmpty ? 'Không được trống' : null;
  String? get validateEndPoint => endPoint.isEmpty ? 'Không được trống' : null;

  bool get isFormError =>
      validateName == null &&
      validatePhone == null &&
      validateStartPoint == null &&
      validateEndPoint == null;
}
