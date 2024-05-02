import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'models/shipping_information_model.dart';
import 'provider/shipping_information_provider.dart';

class ShippingInformationScreen extends StatefulWidget {
  const ShippingInformationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ShippingInformationScreenState createState() =>
      ShippingInformationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShippingInformationProvider(),
      child: ShippingInformationScreen(),
    );
  }
}

class ShippingInformationScreenState extends State<ShippingInformationScreen> {
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
            horizontal: 7.h,
            vertical: 63.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_shipping".tr,
                    style: theme.textTheme.displayLarge,
                  ),
                ),
              ),
              SizedBox(height: 52.v),
              _buildEmailSection(context),
              SizedBox(height: 45.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_country".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 7.v),
              _buildCountrySection(context),
              SizedBox(height: 36.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_city".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 8.v),
              _buildCitySection(context),
              SizedBox(height: 45.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "msg_enter_address_manually".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              _buildAddressSection(context),
              Spacer(),
              SizedBox(height: 34.v),
              _buildContinueToSection(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_your_email".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child:
                Selector<ShippingInformationProvider, TextEditingController?>(
              selector: (context, provider) => provider.emailController,
              builder: (context, emailController, child) {
                return CustomTextFormField(
                  controller: emailController,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCountrySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Selector<ShippingInformationProvider, TextEditingController?>(
        selector: (context, provider) => provider.countrySectionController,
        builder: (context, countrySectionController, child) {
          return CustomTextFormField(
            controller: countrySectionController,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCitySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Selector<ShippingInformationProvider, TextEditingController?>(
        selector: (context, provider) => provider.citySectionController,
        builder: (context, citySectionController, child) {
          return CustomTextFormField(
            controller: citySectionController,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Selector<ShippingInformationProvider, TextEditingController?>(
        selector: (context, provider) => provider.addressSectionController,
        builder: (context, addressSectionController, child) {
          return CustomTextFormField(
            controller: addressSectionController,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueToSection(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_continue_to_paymeny".tr,
      margin: EdgeInsets.only(
        left: 15.h,
        right: 34.h,
      ),
    );
  }
}
