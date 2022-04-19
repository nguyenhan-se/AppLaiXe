// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'chair_booking/chair_booking_page.dart';
import 'confirm_booking/confirm_booking.dart';
import 'passenger/passenger_page.dart';
import 'user_booking/user_booking_page.dart';

const carBookingRoutes = AutoRoute(
  path: 'main',
  page: EmptyRouterPage,
  name: 'CarBookingTab',
  children: [
    AutoRoute(page: PassengerPage, path: ''),
    AutoRoute(page: ChairBookingPage, path: 'chair-booking'),
    AutoRoute(page: ConfirmBookingPage, path: 'confirm-booking-page'),
    AutoRoute(page: UserBookingPage, path: 'user-booking-page')
  ],
);
