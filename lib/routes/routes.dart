import 'package:bintreiq/view/authentication/otp/otp_screen.dart';
import 'package:bintreiq/view/authentication/registration/signup_screen.dart';
import 'package:bintreiq/view/cart/cart_screen.dart';
import 'package:bintreiq/view/detailPage/detail_screen.dart';
import 'package:bintreiq/view/homePage/homescreen.dart';
import 'package:bintreiq/view/profile/profile_screen.dart';
import 'package:bintreiq/view/splash/splash_screen.dart';
import 'package:get/get.dart';
import '../view/authentication/forgetPassword/forget_password_screen.dart';
import '../view/authentication/login/login_screen.dart';
import '../view/completeProfile/complete_profile_screen.dart';
import '../view/detailPage/detail_screen.dart';

class RouteClass {
  // 1 variable , 1 Function and 1 List for each route in named parameter
  static String splashScreen = "/";
  static String loginScreen = "/login";
  static String forgetPasswordScreen = "/forgetpassword";
  static String homeScreen = "/home";
  static String registrationScreen = "/signup";
  static String completeProfileScreen = "/completeprofile";
  static String otpScreen = "/otp";
  static String detailScreen = "/detail";
  static String cartScreen = "/cart";
  static String profileScreen = "/profile";

  static String getSplashRoute() => splashScreen;
  static String getLoginRoute() => loginScreen;
  static String getForgetPasswordRoute() => forgetPasswordScreen;
  static String getHomeRoute() => homeScreen;
  static String getRegistrationRoute() => registrationScreen;
  static String getCompleteProfileRoute() => completeProfileScreen;
  static String getOtpRoute() => otpScreen;
  static String getDetailScreenRoute() => detailScreen;
  static String getCartScreenRoute() => cartScreen;
  static String getProfileScreenRoute() => profileScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashCreen()),
    GetPage(name: completeProfileScreen, page: () => const CompleteProfile()),
    GetPage(name: forgetPasswordScreen, page: () => const ForgetPassword()),
    GetPage(name: registrationScreen, page: () => const RegistrationScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: otpScreen, page: () => const OtpScreen()),
    GetPage(name: detailScreen, page: () => const DetailScreen()),
    GetPage(name: cartScreen, page: () => const CartScreen()),
    GetPage(name: profileScreen, page: () => const ProfileScreen()),
    GetPage(
        name: loginScreen,
        page: () => const LoginScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
  ];
}
