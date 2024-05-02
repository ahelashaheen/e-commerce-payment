import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'models/creditcard_item_model.dart';
import 'models/paymentone_model.dart';
import 'provider/paymentone_provider.dart';
import 'widgets/creditcard_item_widget.dart';

class PaymentoneScreen extends StatefulWidget {
  const PaymentoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PaymentoneScreenState createState() => PaymentoneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentoneProvider(),
      child: PaymentoneScreen(),
    );
  }
}

class PaymentoneScreenState extends State<PaymentoneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 66.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_payment_methods".tr,
                style: CustomTextStyles.displayMedium45,
              ),
              SizedBox(height: 49.v),
              _buildRowCashOn(context),
              SizedBox(height: 62.v),
              _buildColumnCreditDeb(context),
              Spacer(),
              SizedBox(height: 34.v),
              CustomElevatedButton(
                width: 226.h,
                text: "lbl_check_out".tr,
                buttonTextStyle: CustomTextStyles.headlineLarge30,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowCashOn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder26,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle17,
            height: 39.v,
            width: 40.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              top: 7.v,
            ),
            child: Text(
              "msg_cash_on_delivery".tr,
              style: CustomTextStyles.headlineMediumBlack900,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnCreditDeb(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder26,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              right: 93.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle18,
                  height: 23.v,
                  width: 36.h,
                  margin: EdgeInsets.symmetric(vertical: 4.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "msg_credit_debit_card".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 28.v),
          Divider(),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: Consumer<PaymentoneProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 26.v,
                    );
                  },
                  itemCount:
                      provider.paymentoneModelObj.creditcardItemList.length,
                  itemBuilder: (context, index) {
                    CreditcardItemModel model =
                        provider.paymentoneModelObj.creditcardItemList[index];
                    return CreditcardItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 26.v),
          Container(
            margin: EdgeInsets.only(right: 13.h),
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder23,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 24.v,
                  width: 23.h,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    bottom: 7.v,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: IconButton(
                          onPressed: () {},
                          constraints: BoxConstraints(
                            minHeight: 23.adaptSize,
                            minWidth: 23.adaptSize,
                          ),
                          padding: EdgeInsets.all(0),
                          icon: SizedBox(
                            width: 23.adaptSize,
                            height: 23.adaptSize,
                            child: CustomImageView(
                              imagePath: ImageConstant.imageNotFound,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles.titleLargeOnPrimary,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "lbl_add_card".tr,
                    style: CustomTextStyles.headlineLargePrimary,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5.v)
        ],
      ),
    );
  }
}
