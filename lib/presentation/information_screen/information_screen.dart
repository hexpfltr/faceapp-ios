import 'bloc/information_bloc.dart';
import 'models/information_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_icon_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_text_form_field.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<InformationBloc>(
        create: (context) => InformationBloc(
            InformationState(informationModelObj: InformationModel()))
          ..add(InformationInitialEvent()),
        child: InformationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 56.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_information".tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 104.v,
                              width: 92.h,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse591x92,
                                        height: 91.v,
                                        width: 92.h,
                                        radius: BorderRadius.circular(46.h),
                                        alignment: Alignment.topCenter),
                                    CustomIconButton(
                                        height: 29.v,
                                        width: 30.h,
                                        padding: EdgeInsets.all(6.h),
                                        decoration:
                                            IconButtonStyleHelper.outlineWhiteA,
                                        alignment: Alignment.bottomCenter,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgGroup948))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_anne_christion".tr,
                              style: CustomTextStyles.titleLarge_1)),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_xyz_gmail_com".tr,
                              style: CustomTextStyles.bodySmall12_1)),
                      SizedBox(height: 11.v),
                      Text("lbl_account_name".tr,
                          style: CustomTextStyles.titleSmall15_1),
                      SizedBox(height: 10.v),
                      BlocSelector<InformationBloc, InformationState,
                              TextEditingController?>(
                          selector: (state) => state.nameController,
                          builder: (context, nameController) {
                            return CustomTextFormField(
                                controller: nameController,
                                hintText: "lbl_anne_christion".tr);
                          }),
                      SizedBox(height: 17.v),
                      Text("lbl_date_of_birth".tr,
                          style: CustomTextStyles.titleSmall15_1),
                      SizedBox(height: 11.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 13.v),
                          decoration: AppDecoration.fillGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Text("lbl_11_01_1997".tr,
                              style: CustomTextStyles.bodyMedium15_1)),
                      SizedBox(height: 18.v),
                      Text("lbl_address".tr,
                          style: CustomTextStyles.titleSmall15_1),
                      SizedBox(height: 10.v),
                      BlocSelector<InformationBloc, InformationState,
                              TextEditingController?>(
                          selector: (state) => state.addressController,
                          builder: (context, addressController) {
                            return CustomTextFormField(
                                controller: addressController,
                                hintText: "msg_new_south_wales".tr);
                          }),
                      SizedBox(height: 17.v),
                      Text("lbl_mobile_number".tr,
                          style: CustomTextStyles.titleSmall15_1),
                      SizedBox(height: 11.v),
                      BlocSelector<InformationBloc, InformationState,
                              TextEditingController?>(
                          selector: (state) => state.mobileNumberController,
                          builder: (context, mobileNumberController) {
                            return CustomTextFormField(
                                controller: mobileNumberController,
                                hintText: "lbl_9999_999_999".tr,
                                textInputAction: TextInputAction.done);
                          }),
                      SizedBox(height: 3.v)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_complete".tr,
                margin:
                    EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
