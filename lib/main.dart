import 'package:flutter/material.dart';
import 'package:ringa/cashback/cashback.dart';
import 'splash.dart';
import 'auth/login.dart';
import 'auth/register.dart';
import 'auth/forgot_password.dart';
import 'auth/change_password.dart';
import 'dashboard/dashboard.dart';
import 'profile/profile.dart';
import 'profile/myAccount.dart';
import 'carousel.dart';
import 'fund/fund_account.dart';
import 'transactions/transactions.dart';
import 'profile/bvn.dart';

void main() {
  runApp(MaterialApp(
    home: const Splash(),
    routes:   {
      '/carousel': (context) => const Carousel(),
      '/login': (BuildContext context) => const Login(),
      '/register': (context) => const Register(),
      '/forgotPassword': (context) => const ForgotPassword(),
      '/changePassword': (context) => const ChangePassword(),
      '/profile': (context) => const Profile(),
      '/dashboard': (context) => const Dashboard(),
      '/myAccount': (context) => const MyAccount(),
      '/fund': (context) => const Fund(),
      '/cashback': (context) => const Cashback(),
      '/transactions': (context) => const Transactions(),
      '/bvn': (context) => const Bvn()
    },
  ));
}
