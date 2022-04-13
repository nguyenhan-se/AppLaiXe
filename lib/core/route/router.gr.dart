// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../ui/app_start/app_start_page.dart' as _i2;
import '../../ui/auth/signin_page.dart' as _i4;
import '../../ui/chair_booking/chair_booking_page.dart' as _i5;
import '../../ui/home/home_page.dart' as _i3;
import '../../ui/splash/splash.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    AppStartRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AppStartPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    SignInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignInPage());
    },
    ChairBookingRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChairBookingPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(AppStartRoute.name, path: '/start'),
        _i6.RouteConfig(HomeRoute.name, path: '/home'),
        _i6.RouteConfig(SignInRoute.name, path: '/signin'),
        _i6.RouteConfig(ChairBookingRoute.name, path: '/chair-booking')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AppStartPage]
class AppStartRoute extends _i6.PageRouteInfo<void> {
  const AppStartRoute() : super(AppStartRoute.name, path: '/start');

  static const String name = 'AppStartRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signin');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i5.ChairBookingPage]
class ChairBookingRoute extends _i6.PageRouteInfo<void> {
  const ChairBookingRoute()
      : super(ChairBookingRoute.name, path: '/chair-booking');

  static const String name = 'ChairBookingRoute';
}
