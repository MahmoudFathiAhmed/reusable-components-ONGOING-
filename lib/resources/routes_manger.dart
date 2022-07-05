//
// import 'package:flutter/material.dart';
//
//
// class Routes{
//   static const String splashRoute = "/";
//   static const String loginRoute = "/login";
//   static const String registerRoute = "/register";
//   static const String forgotPasswordRoute = "/forgotPassword";
//   static const String onBoardingRoute = "/onBoarding";
//   static const String mainRoute = "/main";
//   static const String storeDetailsRoute = "/storeDetails";
//   static const String contactUsRoute = "/contactUs";
// }
// class RouteGenerator{
//   static Route<dynamic> getRoute(RouteSettings settings){
//     switch(settings.name){
//       case Routes.splashRoute:
//         return MaterialPageRoute(builder: (_)=> const SplashView());
//       case Routes.onBoardingRoute:
//         return MaterialPageRoute(builder: (_)=> const OnBoardingView());
//       case Routes.loginRoute:
//         initLoginModule();
//         return MaterialPageRoute(builder: (_)=> const LoginView());
//       case Routes.registerRoute:
//         initRegisterModule();
//         return MaterialPageRoute(builder: (_)=> const RegisterView());
//       case Routes.forgotPasswordRoute:
//         initForgotPasswordModule();
//         return MaterialPageRoute(builder: (_)=> const ForgotPasswordView());
//       case Routes.mainRoute:
//         initHomeModule();
//         return MaterialPageRoute(builder: (_)=> const MainView());
//       case Routes.storeDetailsRoute:
//         initStoreDetailsModule();
//         return MaterialPageRoute(builder: (_)=> const StoreDetailsView());
//       case Routes.contactUsRoute:
//         return MaterialPageRoute(builder: (_)=> const ContactUsView());
//       default:
//         return unDefinedRoute();
//     }
//   }
//   static Route<dynamic> unDefinedRoute(){
//     return MaterialPageRoute(builder: (_)=>Scaffold(
//       appBar: AppBar(title:  Text(AppStrings.noRouteFound.tr()),),
//       body:  Center(
//         child: Text(AppStrings.noRouteFound.tr()),
//       ),
//     ),);
//   }
// }