// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/presentation/page/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, path: '/', initial: true),
    AutoRoute(page: AppStartPage, path: '/start'),
    AutoRoute(page: ForgotPasswordPage, path: '/forgot-password-page'),
    AutoRoute(page: LoginPage, path: '/login-page'),
    AutoRoute(
      path: '/home',
      page: HomePage,
      children: [
        carBookingRoutes,
        AutoRoute(
          page: HistoryBookingPage,
          path: 'history-booking-page',
          name: 'HistoryTab',
        ),
      ],
    ),
  ],
)
class $AppRouter {}
