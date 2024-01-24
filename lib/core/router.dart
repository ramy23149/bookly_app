import 'package:bookly_app/features/home/presentation/views/book_details.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class RouterApp {
  static String kHomeView = '/homeView';
  static String kBookDetailsView = '/BookDetailsView';
  static String kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SpalshView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
          builder: (context, state) => const BookDetailsView(),
          path: kBookDetailsView),
      GoRoute(
          builder: (context, state) => const SearchView(), path: kSearchView)
    ],
  );
}
