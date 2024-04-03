import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/router.dart';
import 'package:bookly_app/core/service_locator.dart';
import 'package:bookly_app/core/widgets/appNotifier.dart';
import 'package:bookly_app/core/widgets/themes.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/maneger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/maneger/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance().then((pref) {
    var themeMode = pref.getBool('themeMode');
    if (themeMode == true) {
      activeTheme = lightTheme;
    } else {
      activeTheme = darkTheme;
    }
  });
  await SharedPreferences.getInstance().then((pref) {
    var locale = pref.getBool('locale');
    if (locale == false) {
      localeLung = defaultLocale;
    } else {
      localeLung = arabicLocale;
    }
  });
  setupServiceLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppNotifier(
            activeTheme, localeLung
          ),
        ),
      ],
      child: const BooklyApp(),
    ),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifer = Provider.of<AppNotifier>(context);
    final localLung = Provider.of<AppNotifier>(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewsetBooks(),
        )
      ],
      child: MaterialApp.router(
        locale: localLung.getLocale,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        theme: themeNotifer.getTheme,
        routerConfig: RouterApp.router,
        //  routeInformationParser: RouterApp.router.routeInformationParser,
      ),
    );
  }
}
