import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/layout/news_app/cubit/cubit.dart';
import 'package:udemy_flutter/layout/shop_app/cubit/cubit.dart';
import 'package:udemy_flutter/layout/social_app/cubit/cubit.dart';
import 'package:udemy_flutter/layout/social_app/social_layout.dart';
import 'package:udemy_flutter/modules/social_app/social_login/social_login_screen.dart';
import 'package:udemy_flutter/shared/components/components.dart';
import 'package:udemy_flutter/shared/components/constants.dart';
import 'package:udemy_flutter/shared/cubit/cubit.dart';
import 'package:udemy_flutter/shared/cubit/states.dart';
import 'package:udemy_flutter/shared/network/local/cache_helper.dart';
import 'package:udemy_flutter/shared/network/remote/dio_helper.dart';
import 'package:udemy_flutter/shared/styles/themes.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async
{
  debugPrint('on background message');
  debugPrint(message.data.toString());

  showToast(text: 'on background message', state: ToastStates.kSUCCESS,);
}

void main() async
{
  // بيتأكد ان كل حاجه هنا في الميثود خلصت و بعدين يتفح الابلكيشن
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  var token = await FirebaseMessaging.instance.getToken();

  debugPrint(token);


  // foreground fcm
  FirebaseMessaging.onMessage.listen((event)
  {
    debugPrint('on message');
    debugPrint(event.data.toString());

    showToast(text: 'on message', state: ToastStates.kSUCCESS,);
  });

  // when click on notification to open app
  FirebaseMessaging.onMessageOpenedApp.listen((event)
  {
    debugPrint('on message opened app');
    debugPrint(event.data.toString());
    showToast(text: 'on message opened app', state: ToastStates.kSUCCESS,);
  });

  // background fcm
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  // Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  bool? isDark = CacheHelper.getData(key: 'isDark');

  Widget widget;

  //bool onBoarding = CacheHelper.getData(key: 'onBoarding');
  //token = CacheHelper.getData(key: 'token');

  uId = CacheHelper.getData(key: 'uId');

  // if(onBoarding != null)
  // {
  //   if(token != null) widget = ShopLayout();
  //   else widget = ShopLoginScreen();
  // } else
  //   {
  //     widget = OnBoardingScreen();
  //   }

  if(uId != null)
  {
    widget = const SocialLayout();
  } else
    {
      widget = const SocialLoginScreen();
    }

  runApp(MyApp(
    isDark: isDark,
    startWidget: widget,
  ));
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  // constructor
  // build
  final bool? isDark;
  final Widget? startWidget;

   const MyApp({Key? key,
    this.isDark,
    this.startWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsCubit()
            ..getBusiness()
            ..getSports()
            ..getScience(),
        ),
        BlocProvider(
          create: (BuildContext context) => AppCubit()
            ..changeAppMode(
              fromShared: isDark,
            ),
        ),
        BlocProvider(
          create: (BuildContext context) => ShopCubit()..getHomeData()..getCategories()..getFavorites()..getUserData(),
        ),
        BlocProvider(
          create: (BuildContext context) => SocialCubit()..getUserData()..getPosts(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.light,
            home: const SocialLayout(),
          );
        },
      ),
    );
  }
}

// ./gradlew signingReport