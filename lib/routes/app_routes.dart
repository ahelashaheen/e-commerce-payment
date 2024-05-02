import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/paymentone_screen/paymentone_screen.dart';
import '../presentation/paymenttwo_screen/paymenttwo_screen.dart';
import '../presentation/shipping_information_screen/shipping_information_screen.dart';

class AppRoutes {
  static const String shippingInformationScreen =
      '/shipping_information_screen';

  static const String paymentoneScreen = '/paymentone_screen';

  static const String paymenttwoScreen = '/paymenttwo_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        shippingInformationScreen: ShippingInformationScreen.builder,
        paymentoneScreen: PaymentoneScreen.builder,
        paymenttwoScreen: PaymenttwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ShippingInformationScreen.builder
      };
}
