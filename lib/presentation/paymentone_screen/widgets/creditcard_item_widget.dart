import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/creditcard_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreditcardItemWidget extends StatelessWidget {
  CreditcardItemWidget(this.creditcardItemModelObj, {Key? key})
      : super(
          key: key,
        );

  CreditcardItemModel creditcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder23,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: creditcardItemModelObj.cardNumber!,
            height: 38.v,
            width: 39.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              top: 10.v,
              bottom: 3.v,
            ),
            child: Text(
              creditcardItemModelObj.cardName!,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              top: 16.v,
              right: 17.h,
              bottom: 8.v,
            ),
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.outlineBlack9002.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder7,
            ),
            child: Container(
              height: 6.adaptSize,
              width: 6.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
