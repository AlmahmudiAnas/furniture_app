import 'package:flutter/material.dart';
import 'package:furniture_app/screens/Profile/profile_screen.dart';
import 'package:furniture_app/screens/cart/cart_screen.dart';
import 'package:furniture_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:furniture_app/screens/contact_us/contactus_screen.dart';
import 'package:furniture_app/screens/details/details_screen.dart';
import 'package:furniture_app/screens/flash_sales/flash_sale_screen.dart';
import 'package:furniture_app/screens/forgot_password/forgor_password_screen.dart';
import 'package:furniture_app/screens/game_offers/game_offers_screen.dart';
import 'package:furniture_app/screens/home/home_screen.dart';
import 'package:furniture_app/screens/login_success/login_success_screen.dart';
import 'package:furniture_app/screens/my_account/edit_my_account.dart';
import 'package:furniture_app/screens/my_account/my_account.dart';
import 'package:furniture_app/screens/otp_screen/otp_screen.dart';
import 'package:furniture_app/screens/settings/settings_screen.dart';
import 'package:furniture_app/screens/sign_in/sign_in_screen.dart';
import 'package:furniture_app/screens/sign_up/sign_up_screen.dart';
import 'package:furniture_app/screens/splash/splash_screen.dart';
import 'package:furniture_app/screens/test.dart';
import 'package:furniture_app/screens/wallet/wallet_screen.dart';

// for named routes
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routename: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  FlashSales.routeName: (context) => FlashSales(),
  Test.routeName: (context) => Test(),
  Contactus.routeName: (context) => Contactus(),
  MyAccount.routeName: (context) => MyAccount(),
  EditMyAccount.routeName: (context) => EditMyAccount(),
  Settings.routeName: (context) => Settings(),
  Wallet.routeName: (context) => Wallet(),
  GameOffers.routeName: (context) => GameOffers(),
};
