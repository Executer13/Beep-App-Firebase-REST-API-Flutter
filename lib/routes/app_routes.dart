import 'package:yasan_s_application1/presentation/Navbar/Navbar.dart';
import 'package:yasan_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:yasan_s_application1/presentation/splash_screen/binding/splash_binding.dart';
import 'package:yasan_s_application1/presentation/cars_screen/cars_screen.dart';
import 'package:yasan_s_application1/presentation/cars_screen/binding/cars_binding.dart';
import 'package:yasan_s_application1/presentation/recharge_screen/recharge_screen.dart';
import 'package:yasan_s_application1/presentation/recharge_screen/binding/recharge_binding.dart';
import 'package:yasan_s_application1/presentation/login_screen/login_screen.dart';
import 'package:yasan_s_application1/presentation/login_screen/binding/login_binding.dart';
import 'package:yasan_s_application1/presentation/otp_screen/otp_screen.dart';
import 'package:yasan_s_application1/presentation/otp_screen/binding/otp_binding.dart';
import 'package:yasan_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:yasan_s_application1/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:yasan_s_application1/presentation/home_screen/home_screen.dart';
import 'package:yasan_s_application1/presentation/home_screen/binding/home_binding.dart';
import 'package:yasan_s_application1/presentation/language_screen/language_screen.dart';
import 'package:yasan_s_application1/presentation/language_screen/binding/language_binding.dart';
import 'package:yasan_s_application1/presentation/login_arabic_screen/login_arabic_screen.dart';
import 'package:yasan_s_application1/presentation/login_arabic_screen/binding/login_arabic_binding.dart';
import 'package:yasan_s_application1/presentation/otp_arabic_screen/otp_arabic_screen.dart';
import 'package:yasan_s_application1/presentation/otp_arabic_screen/binding/otp_arabic_binding.dart';
import 'package:yasan_s_application1/presentation/sign_up_arabic_screen/sign_up_arabic_screen.dart';
import 'package:yasan_s_application1/presentation/sign_up_arabic_screen/binding/sign_up_arabic_binding.dart';
import 'package:yasan_s_application1/presentation/reset_password_arabic_screen/reset_password_arabic_screen.dart';
import 'package:yasan_s_application1/presentation/reset_password_arabic_screen/binding/reset_password_arabic_binding.dart';
import 'package:yasan_s_application1/presentation/home_arabic_screen/home_arabic_screen.dart';
import 'package:yasan_s_application1/presentation/home_arabic_screen/binding/home_arabic_binding.dart';
import 'package:yasan_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:yasan_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/Navbar/binding/navbar_binding.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String carsScreen = '/cars_screen';

  static String rechargeScreen = '/recharge_screen';

  static String loginScreen = '/login_screen';

  static String otpScreen = '/otp_screen';

  static String signUpScreen = '/sign_up_screen';

  static String homeScreen = '/home_screen';

  static String languageScreen = '/language_screen';

  static String loginArabicScreen = '/login_arabic_screen';

  static String otpArabicScreen = '/otp_arabic_screen';

  static String signUpArabicScreen = '/sign_up_arabic_screen';

  static String resetPasswordArabicScreen = '/reset_password_arabic_screen';

  static String homeArabicScreen = '/home_arabic_screen';


  static String navbarScreen = '/Navbar';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: carsScreen,
      page: () => CarsScreen(),
      bindings: [
        CarsBinding(),
      ],
    ),
    GetPage(
      name: rechargeScreen,
      page: () => RechargeScreen(),
      bindings: [
        RechargeBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
     GetPage(
      name: navbarScreen,
      page: () => Navbar(),
      bindings: [
        NavbarBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: languageScreen,
      page: () => LanguageScreen(),
      bindings: [
        LanguageBinding(),
      ],
    ),
    GetPage(
      name: loginArabicScreen,
      page: () => LoginArabicScreen(),
      bindings: [
        LoginArabicBinding(),
      ],
    ),
    GetPage(
      name: otpArabicScreen,
      page: () => OtpArabicScreen(),
      bindings: [
        OtpArabicBinding(),
      ],
    ),
    GetPage(
      name: signUpArabicScreen,
      page: () => SignUpArabicScreen(),
      bindings: [
        SignUpArabicBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordArabicScreen,
      page: () => ResetPasswordArabicScreen(),
      bindings: [
        ResetPasswordArabicBinding(),
      ],
    ),
    GetPage(
      name: homeArabicScreen,
      page: () => HomeArabicScreen(),
      bindings: [
        HomeArabicBinding(),
      ],
    ),

    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )



  ];
}
