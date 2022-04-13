// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/ui/app_start/app_start_page.dart';
import 'package:flutter_boilerplate_riverpod/ui/auth/signin_page.dart';
import 'package:flutter_boilerplate_riverpod/ui/chair_booking/chair_booking_page.dart';
import 'package:flutter_boilerplate_riverpod/ui/home/home_page.dart';
import 'package:flutter_boilerplate_riverpod/ui/splash/splash.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, path: '/', initial: true),
    AutoRoute(page: AppStartPage, path: '/start'),
    AutoRoute(page: HomePage, path: '/home'),
    AutoRoute(page: SignInPage, path: '/signin'),
    AutoRoute(page: ChairBookingPage, path: '/chair-booking'),
  ],
)
class $AppRouter {}
