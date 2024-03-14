import 'package:airplane_project/configs/router/route_names.dart';
import 'package:airplane_project/features/bonus/presentasion/ui/bonus_screen.dart';
import 'package:airplane_project/features/get_started/presentasion/ui/get_started_screen.dart';
import 'package:airplane_project/features/main/presentasion/ui/main_screen.dart';
import 'package:airplane_project/features/sign_up/presentasion/ui/sign_up_screen.dart';
import 'package:airplane_project/features/splash/presentasion/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      name: RouteNames.getStarted,
      path: '/get-started',
      builder: (BuildContext context, GoRouterState state) {
        return const GetStartedScreen();
      },
    ),
    GoRoute(
      name: RouteNames.signUp,
      path: '/sign-up',
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpScreen();
      },
    ),
    GoRoute(
      name: RouteNames.bonus,
      path: '/bonus',
      builder: (BuildContext context, GoRouterState state) {
        return const BonusScreen();
      },
    ),
    GoRoute(
      name: RouteNames.main,
      path: '/main',
      builder: (BuildContext context, GoRouterState state) {
        return const MainScreen();
      },
    ),
  ],
);
