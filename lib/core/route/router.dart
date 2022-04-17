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
    AutoRoute(page: ConfirmBookingPage, path: '/confirm-booking-page'),
    AutoRoute(page: LoginPage, path: '/login-test-page'),
    AutoRoute(page: ForgotPasswordPage, path: '/forgot-password-page'),
    AutoRoute(page: RatingPage, path: '/rating-page'),
    AutoRoute(page: PickAndDropPage, path: '/pick-and-drop-page')
  ],
)
class $AppRouter {}
