import 'package:bookly_app/core/router.dart';
import 'package:bookly_app/core/service_locator.dart';
import 'package:bookly_app/core/widgets/t;hemeNotifier.dart';
import 'package:bookly_app/core/widgets/themes.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/maneger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/maneger/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
await  SharedPreferences.getInstance().then((pref) {
    var themeMode = pref.getBool('themeMode');
    if (themeMode == true) {
      activeTheme = lightTheme;
    } else {
      activeTheme = darkTheme;
    }
  });
  setupServiceLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeNotifier(activeTheme),
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
    final themeNotifer= Provider.of<ThemeNotifier>(context);
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
        debugShowCheckedModeBanner: false,
        theme:themeNotifer.getTheme,
        routerConfig: RouterApp.router,
        //  routeInformationParser: RouterApp.router.routeInformationParser,
      ),
    );
  }
}
