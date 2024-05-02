import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/paymenttwo_model.dart';

/// A provider class for the PaymenttwoScreen.
///
/// This provider manages the state of the PaymenttwoScreen, including the
/// current paymenttwoModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PaymenttwoProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  PaymenttwoModel paymenttwoModelObj = PaymenttwoModel();

  bool saveThisCardFor = false;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    cardNumberController.dispose();
    dateController.dispose();
  }

  void changeCheckBox(bool value) {
    saveThisCardFor = value;
    notifyListeners();
  }
}
