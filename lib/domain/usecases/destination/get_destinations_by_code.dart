// Package imports:
import 'package:flutter_boilerplate_riverpod/domain/entities/destination.dart';

import '../usecase.dart';

final List<Destination> listDestination = [
  Destination.empty().copyWith(
    code: 'HG-HN',
    dateForm: '21:00',
    dateTo: '05:00',
    from: 'Hà Giang',
    to: 'Hà Nội',
    timeout: 8,
  ),
  Destination.empty().copyWith(
    code: 'HG-HN',
    dateForm: '19:00',
    dateTo: '03:00',
    from: 'Hà Giang',
    to: 'Hà Nội',
    timeout: 8,
  ),
  Destination.empty().copyWith(
    code: 'HG-HN',
    dateForm: '07:00',
    dateTo: '13:00',
    from: 'Hà Giang',
    to: 'Hà Nội',
    timeout: 8,
  ),
  Destination.empty().copyWith(
    code: 'HN-HG',
    dateForm: '21:00',
    dateTo: '05:00',
    from: 'Hà Nội',
    to: 'Hà Giang',
    timeout: 8,
  ),
  Destination.empty().copyWith(
    code: 'HN-HG',
    dateForm: '19:00',
    dateTo: '03:00',
    from: 'Hà Nội',
    to: 'Hà Giang',
    timeout: 8,
  ),
  Destination.empty().copyWith(
    code: 'HN-HG',
    dateForm: '07:00',
    dateTo: '13:00',
    from: 'Hà Nội',
    to: 'Hà Giang',
    timeout: 8,
  ),
];

class GetDestinationsByCodeUseCase
    implements UseCase<List<Destination>, String> {
  GetDestinationsByCodeUseCase();

  @override
  call({required params}) {
    return listDestination.where((element) => element.code == params).toList();
  }
}
