import 'package:chatty/pages/frames/message/index.dart';
import 'package:chatty/pages/frames/welcome/index.dart';
import 'package:chatty/pages/frames/sign_in/index.dart';
import 'package:flutter/material.dart';
import 'package:chatty/common/middlewares/middlewares.dart';
import 'package:get/get.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // About boot up the app
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),

    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),
    /*
    // GetPage(
    //   name: AppRoutes.Application,
    //   page: () => ApplicationPage(),
    //   binding: ApplicationBinding(),
    //   middlewares: [
    //     RouteAuthMiddleware(priority: 1),
    //   ],
    // ),
    GetPage(
        name: AppRoutes.EmailLogin,
        page: () => EmailLoginPage(),
        binding: EmailLoginBinding()),
    GetPage(
        name: AppRoutes.Register,
        page: () => RegisterPage(),
        binding: RegisterBinding()),
    GetPage(
        name: AppRoutes.Forgot,
        page: () => ForgotPage(),
        binding: ForgotBinding()),
    GetPage(
        name: AppRoutes.Phone,
        page: () => PhonePage(),
        binding: PhoneBinding()),
    GetPage(
        name: AppRoutes.SendCode,
        page: () => SendCodePage(),
        binding: SendCodeBinding()),

    GetPage(
        name: AppRoutes.Contact,
        page: () => ContactPage(),
        binding: ContactBinding()),
*/
    GetPage(
      name: AppRoutes.Message,
      page: () => const MessagePage(),
      binding: MessageBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),
/*
    GetPage(
        name: AppRoutes.Profile,
        page: () => ProfilePage(),
        binding: ProfileBinding()),

    GetPage(
        name: AppRoutes.Chat, page: () => ChatPage(), binding: ChatBinding()),

    GetPage(
        name: AppRoutes.Photoimgview,
        page: () => PhotoImgViewPage(),
        binding: PhotoImgViewBinding()),
    GetPage(
        name: AppRoutes.VoiceCall,
        page: () => VoiceCallViewPage(),
        binding: VoiceCallViewBinding()),
    GetPage(
        name: AppRoutes.VideoCall,
        page: () => VideoCallPage(),
        binding: VideoCallBinding()), */
  ];
}
