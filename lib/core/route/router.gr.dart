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
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart' as _i3;

import '../../domain/entities/destination.dart' as _i5;
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
    RatingRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.RatingPage());
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
          routeData: routeData, child: const _i1.PickAndDropPage());
    },
    PassengerRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PassengerPage());
    },
    ChairBookingRoute.name: (routeData) {
      final args = routeData.argsAs<ChairBookingRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.ChairBookingPage(
              key: args.key, destination: args.destination));
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
        _i2.RouteConfig(RatingRoute.name, path: '/rating-page'),
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
              path: 'pick-and-drop-page', parent: HomeRoute.name)
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
/// [_i1.RatingPage]
class RatingRoute extends _i2.PageRouteInfo<void> {
  const RatingRoute() : super(RatingRoute.name, path: '/rating-page');

  static const String name = 'RatingRoute';
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
/// [_i1.PickAndDropPage]
class HistoryTab extends _i2.PageRouteInfo<void> {
  const HistoryTab() : super(HistoryTab.name, path: 'pick-and-drop-page');

  static const String name = 'HistoryTab';
}

/// generated route for
/// [_i1.PassengerPage]
class PassengerRoute extends _i2.PageRouteInfo<void> {
  const PassengerRoute() : super(PassengerRoute.name, path: '');

  static const String name = 'PassengerRoute';
}

/// generated route for
/// [_i1.ChairBookingPage]
class ChairBookingRoute extends _i2.PageRouteInfo<ChairBookingRouteArgs> {
  ChairBookingRoute({_i4.Key? key, required _i5.Destination destination})
      : super(ChairBookingRoute.name,
            path: 'chair-booking',
            args: ChairBookingRouteArgs(key: key, destination: destination));

  static const String name = 'ChairBookingRoute';
}

class ChairBookingRouteArgs {
  const ChairBookingRouteArgs({this.key, required this.destination});

  final _i4.Key? key;

  final _i5.Destination destination;

  @override
  String toString() {
    return 'ChairBookingRouteArgs{key: $key, destination: $destination}';
  }
}

/// generated route for
/// [_i1.ConfirmBookingPage]
class ConfirmBookingRoute extends _i2.PageRouteInfo<void> {
  const ConfirmBookingRoute()
      : super(ConfirmBookingRoute.name, path: 'confirm-booking-page');

  static const String name = 'ConfirmBookingRoute';
}

/// generated route for
/// [_i1.UserBookingPage]
class UserBookingRoute extends _i2.PageRouteInfo<void> {
  const UserBookingRoute()
      : super(UserBookingRoute.name, path: 'user-booking-page');

  static const String name = 'UserBookingRoute';
}
