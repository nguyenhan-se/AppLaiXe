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
import 'package:flutter/foundation.dart' as _i8;
import 'package:flutter/material.dart' as _i7;

import '../../domain/entities/booker.dart' as _i10;
import '../../domain/entities/destination.dart' as _i9;
import '../../presentation/page/car_booking/chair_booking/chair_booking_page.dart'
    as _i4;
import '../../presentation/page/car_booking/confirm_booking/confirm_booking.dart'
    as _i5;
import '../../presentation/page/car_booking/passenger/passenger_page.dart'
    as _i3;
import '../../presentation/page/car_booking/user_booking/user_booking_page.dart'
    as _i6;
import '../../presentation/page/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
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
    ForgotPasswordRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ForgotPasswordPage());
    },
    LoginRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    MainsTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    HistoryTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HistoryBookingPage());
    },
    PassengerRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PassengerPage());
    },
    ChairBookingRoute.name: (routeData) {
      final args = routeData.argsAs<ChairBookingRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ChairBookingPage(
              key: args.key, destination: args.destination));
    },
    ConfirmBookingRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmBookingRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ConfirmBookingPage(key: args.key, booker: args.booker));
    },
    UserBookingRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.UserBookingPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(SplashRoute.name, path: '/'),
        _i2.RouteConfig(AppStartRoute.name, path: '/start'),
        _i2.RouteConfig(ForgotPasswordRoute.name,
            path: '/forgot-password-page'),
        _i2.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i2.RouteConfig(HomeRoute.name, path: '/home', children: [
          _i2.RouteConfig(MainsTab.name,
              path: 'mains',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(PassengerRoute.name,
                    path: '', parent: MainsTab.name),
                _i2.RouteConfig(ChairBookingRoute.name,
                    path: 'chair-booking', parent: MainsTab.name),
                _i2.RouteConfig(ConfirmBookingRoute.name,
                    path: 'confirm-booking-page', parent: MainsTab.name),
                _i2.RouteConfig(UserBookingRoute.name,
                    path: 'user-booking-page', parent: MainsTab.name)
              ]),
          _i2.RouteConfig(HistoryTab.name,
              path: 'history-booking-page', parent: HomeRoute.name)
        ])
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
/// [_i1.ForgotPasswordPage]
class ForgotPasswordRoute extends _i2.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: '/forgot-password-page');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i2.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MainsTab extends _i2.PageRouteInfo<void> {
  const MainsTab({List<_i2.PageRouteInfo>? children})
      : super(MainsTab.name, path: 'mains', initialChildren: children);

  static const String name = 'MainsTab';
}

/// generated route for
/// [_i1.HistoryBookingPage]
class HistoryTab extends _i2.PageRouteInfo<void> {
  const HistoryTab() : super(HistoryTab.name, path: 'history-booking-page');

  static const String name = 'HistoryTab';
}

/// generated route for
/// [_i3.PassengerPage]
class PassengerRoute extends _i2.PageRouteInfo<void> {
  const PassengerRoute() : super(PassengerRoute.name, path: '');

  static const String name = 'PassengerRoute';
}

/// generated route for
/// [_i4.ChairBookingPage]
class ChairBookingRoute extends _i2.PageRouteInfo<ChairBookingRouteArgs> {
  ChairBookingRoute({_i8.Key? key, required _i9.Destination destination})
      : super(ChairBookingRoute.name,
            path: 'chair-booking',
            args: ChairBookingRouteArgs(key: key, destination: destination));

  static const String name = 'ChairBookingRoute';
}

class ChairBookingRouteArgs {
  const ChairBookingRouteArgs({this.key, required this.destination});

  final _i8.Key? key;

  final _i9.Destination destination;

  @override
  String toString() {
    return 'ChairBookingRouteArgs{key: $key, destination: $destination}';
  }
}

/// generated route for
/// [_i5.ConfirmBookingPage]
class ConfirmBookingRoute extends _i2.PageRouteInfo<ConfirmBookingRouteArgs> {
  ConfirmBookingRoute({_i8.Key? key, required _i10.Booker booker})
      : super(ConfirmBookingRoute.name,
            path: 'confirm-booking-page',
            args: ConfirmBookingRouteArgs(key: key, booker: booker));

  static const String name = 'ConfirmBookingRoute';
}

class ConfirmBookingRouteArgs {
  const ConfirmBookingRouteArgs({this.key, required this.booker});

  final _i8.Key? key;

  final _i10.Booker booker;

  @override
  String toString() {
    return 'ConfirmBookingRouteArgs{key: $key, booker: $booker}';
  }
}

/// generated route for
/// [_i6.UserBookingPage]
class UserBookingRoute extends _i2.PageRouteInfo<void> {
  const UserBookingRoute()
      : super(UserBookingRoute.name, path: 'user-booking-page');

  static const String name = 'UserBookingRoute';
}
