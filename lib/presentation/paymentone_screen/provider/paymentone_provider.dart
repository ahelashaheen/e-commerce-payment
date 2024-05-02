import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/creditcard_item_model.dart';
import '../models/paymentone_model.dart';

/// A provider class for the PaymentoneScreen.
///
/// This provider manages the state of the PaymentoneScreen, including the
/// current paymentoneModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PaymentoneProvider extends ChangeNotifier {
  PaymentoneModel paymentoneModelObj = PaymentoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
