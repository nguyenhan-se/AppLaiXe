// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/presentation/page/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, path: '/', initial: true),
    AutoRoute(page: AppStartPage, path: '/start'),
    AutoRoute(page: HomePage, path: '/home'),
    AutoRoute(page: SignInPage, path: '/signin'),
    AutoRoute(page: ChairBookingPage, path: '/chair-booking'),
    AutoRoute(page: PassengerPage, path: '/passenger-page'),
    AutoRoute(page: ConfirmBookingPage, path: '/confirm-booking-page')
  ],
)
class $AppRouter {}
