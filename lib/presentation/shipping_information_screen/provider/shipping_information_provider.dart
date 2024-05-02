import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/shipping_information_model.dart';

/// A provider class for the ShippingInformationScreen.
///
/// This provider manages the state of the ShippingInformationScreen, including the
/// current shippingInformationModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ShippingInformationProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController countrySectionController = TextEditingController();

  TextEditingController citySectionController = TextEditingController();

  TextEditingController addressSectionController = TextEditingController();

  ShippingInformationModel shippingInformationModelObj =
      ShippingInformationModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    countrySectionController.dispose();
    citySectionController.dispose();
    addressSectionController.dispose();
  }
}
