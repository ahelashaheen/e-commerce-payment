import '../../../core/app_export.dart';

/// This class is used in the [creditcard_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreditcardItemModel {
  CreditcardItemModel({this.cardNumber, this.cardName, this.id}) {
    cardNumber = cardNumber ?? ImageConstant.imgRectangle19;
    cardName = cardName ?? "**** **** **** ****";
    id = id ?? "";
  }

  String? cardNumber;

  String? cardName;

  String? id;
}
