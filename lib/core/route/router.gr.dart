// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../presentation/page/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    AppStartRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AppStartPage());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    SignInRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignInPage());
    },
    ChairBookingRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ChairBookingPage());
    },
    PassengerRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PassengerPage());
    },
    ConfirmBookingRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ConfirmBookingPage());
    },
    UserBookingRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.UserBookingPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(SplashRoute.name, path: '/'),
        _i2.RouteConfig(AppStartRoute.name, path: '/start'),
        _i2.RouteConfig(HomeRoute.name, path: '/home'),
        _i2.RouteConfig(SignInRoute.name, path: '/signin'),
        _i2.RouteConfig(ChairBookingRoute.name, path: '/chair-booking'),
        _i2.RouteConfig(PassengerRoute.name, path: '/passenger-page'),
        _i2.RouteConfig(ConfirmBookingRoute.name,
            path: '/confirm-booking-page'),
        _i2.RouteConfig(UserBookingRoute.name, path: '/user-booking-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i2.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i1.AppStartPage]
class AppStartRoute extends _i2.PageRouteInfo<void> {
  const AppStartRoute() : super(AppStartRoute.name, path: '/start');

  static const String name = 'AppStartRoute';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i2.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signin');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i1.ChairBookingPage]
class ChairBookingRoute extends _i2.PageRouteInfo<void> {
  const ChairBookingRoute()
      : super(ChairBookingRoute.name, path: '/chair-booking');

  static const String name = 'ChairBookingRoute';
}

/// generated route for
/// [_i1.PassengerPage]
class PassengerRoute extends _i2.PageRouteInfo<void> {
  const PassengerRoute() : super(PassengerRoute.name, path: '/passenger-page');

  static const String name = 'PassengerRoute';
}

/// generated route for
/// [_i1.ConfirmBookingPage]
class ConfirmBookingRoute extends _i2.PageRouteInfo<void> {
  const ConfirmBookingRoute()
      : super(ConfirmBookingRoute.name, path: '/confirm-booking-page');

  static const String name = 'ConfirmBookingRoute';
}

/// generated route for
/// [_i1.UserBookingPage]
class UserBookingRoute extends _i2.PageRouteInfo<void> {
  const UserBookingRoute()
      : super(UserBookingRoute.name, path: '/user-booking-page');

  static const String name = 'UserBookingRoute';
}
