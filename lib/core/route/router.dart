// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/presentation/page/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, path: '/', initial: true),
    AutoRoute(page: AppStartPage, path: '/start'),
    AutoRoute(page: SignInPage, path: '/signin'),
    AutoRoute(
      path: '/home',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'mains',
          page: EmptyRouterPage,
          name: 'MainsTab',
          children: [
            AutoRoute(page: PassengerPage, path: ''),
            AutoRoute(page: ChairBookingPage, path: 'chair-booking'),
            AutoRoute(page: ConfirmBookingPage, path: 'confirm-booking-page'),
            AutoRoute(page: UserBookingPage, path: 'user-booking-page')
          ],
        ),
        AutoRoute(page: SettingsPage, path: 'settings', name: 'SettingsTab'),
      ],
    ),
  ],
)
class $AppRouter {}
