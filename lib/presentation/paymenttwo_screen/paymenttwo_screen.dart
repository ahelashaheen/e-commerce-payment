import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'models/paymenttwo_model.dart';
import 'provider/paymenttwo_provider.dart';

class PaymenttwoScreen extends StatefulWidget {
  const PaymenttwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PaymenttwoScreenState createState() => PaymenttwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymenttwoProvider(),
      child: PaymenttwoScreen(),
    );
  }
}

class PaymenttwoScreenState extends State<PaymenttwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 61.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_add_card".tr,
                  style: theme.textTheme.displayMedium,
                ),
              ),
              SizedBox(height: 86.v),
              _buildCreditDebit(context),
              SizedBox(height: 27.v),
              _buildSaveThisCardFor(context),
              Spacer(),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                width: 226.h,
                text: "lbl_pay_now".tr,
                margin: EdgeInsets.only(left: 73.h),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardHolder(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_cardholder_name".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 7.v),
          Selector<PaymenttwoProvider, TextEditingController?>(
            selector: (context, provider) => provider.nameController,
            builder: (context, nameController, child) {
              return CustomTextFormField(
                controller: nameController,
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_card_number".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 8.v),
          Selector<PaymenttwoProvider, TextEditingController?>(
            selector: (context, provider) => provider.cardNumberController,
            builder: (context, cardNumberController, child) {
              return CustomTextFormField(
                controller: cardNumberController,
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreditDebit(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 21.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 21.v,
        ),
        decoration: AppDecoration.outlineBlack9003.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder26,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  right: 54.h,
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
                      padding: EdgeInsets.only(left: 21.h),
                      child: Text(
                        "msg_credit_debit_card".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 22.v),
            Divider(),
            SizedBox(height: 36.v),
            _buildCardHolder(context),
            SizedBox(height: 20.v),
            _buildCardNumber(context),
            SizedBox(height: 45.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_exprition_date".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 8.v),
                        Selector<PaymenttwoProvider, TextEditingController?>(
                          selector: (context, provider) =>
                              provider.dateController,
                          builder: (context, dateController, child) {
                            return CustomTextFormField(
                              width: 121.h,
                              controller: dateController,
                              textInputAction: TextInputAction.done,
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineBlackTL10,
                              fillColor: theme.colorScheme.onPrimary,
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "lbl_cvv".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.outlineBlack9004.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                left: 84.h,
                                top: 10.v,
                                bottom: 6.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgMoney138686911,
                              height: 19.adaptSize,
                              width: 19.adaptSize,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 5.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveThisCardFor(BuildContext context) {
    return Selector<PaymenttwoProvider, bool?>(
      selector: (context, provider) => provider.saveThisCardFor,
      builder: (context, saveThisCardFor, child) {
        return CustomCheckboxButton(
          text: "msg_save_this_card_for".tr,
          value: saveThisCardFor,
          onChange: (value) {
            context.read<PaymenttwoProvider>().changeCheckBox(value);
          },
        );
      },
    );
  }
}
