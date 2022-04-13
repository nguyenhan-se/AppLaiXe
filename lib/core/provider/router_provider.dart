// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../route/router.gr.dart';

final routerProvider = ChangeNotifierProvider<AppRouter>((ref) {
  return AppRouter();
});
