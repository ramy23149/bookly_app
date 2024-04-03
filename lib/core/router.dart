import 'package:bookly_app/core/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/maneger/suggestion_Books_cubit/suggestion_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/data/repos/search_repo_imple.dart';
import 'package:bookly_app/features/search/presentation/maneger/searching_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          path: kBookDetailsView,
          builder: (context, state) =>
                 BookDetailsView(
                  bookModel: state.extra as BookModel,
                ),
              ),
  
      GoRoute(
          builder: (context, state) => BlocProvider(
                create: (context) => SearchCubit(
                  getIt.get<SearchRopoImple>(),
                ),//..getSerchBooks(bookName: ),
                child: const SearchView(),
              ),
          path: kSearchView)
    ],
  );
}
