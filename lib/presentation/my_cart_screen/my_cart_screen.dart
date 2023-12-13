import '../my_cart_screen/widgets/my_cart_item_widget.dart';
import 'bloc/my_cart_bloc.dart';
import 'models/my_cart_item_model.dart';
import 'models/my_cart_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyCartBloc>(
        create: (context) =>
            MyCartBloc(MyCartState(myCartModelObj: MyCartModel()))
              ..add(MyCartInitialEvent()),
        child: MyCartScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 56.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_my_cart".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgShoppingbag,
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 13.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("msg_promo_code_or_vourchers".tr,
                                          style: CustomTextStyles
                                              .titleLargeRegular),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowrightPrimary,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 69.h,
                                              top: 7.v,
                                              bottom: 6.v))
                                    ]),
                                SizedBox(height: 21.v),
                                BlocSelector<MyCartBloc, MyCartState,
                                        MyCartModel?>(
                                    selector: (state) => state.myCartModelObj,
                                    builder: (context, myCartModelObj) {
                                      return ListView.separated(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(height: 14.v);
                                          },
                                          itemCount: myCartModelObj
                                                  ?.myCartItemList.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            MyCartItemModel model =
                                                myCartModelObj?.myCartItemList[
                                                        index] ??
                                                    MyCartItemModel();
                                            return MyCartItemWidget(model);
                                          });
                                    }),
                                SizedBox(height: 31.v),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_subtotal".tr,
                                          style: CustomTextStyles
                                              .bodyLargeErrorContainer17),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 3.v, bottom: 2.v),
                                          child: Text("lbl_134_94".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeInter_1))
                                    ]),
                                SizedBox(height: 7.v),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_fee_delivery".tr,
                                          style: CustomTextStyles
                                              .bodyLargeErrorContainer17),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Text("lbl_10".tr,
                                              style: CustomTextStyles
                                                  .titleMediumSemiBold))
                                    ]),
                                SizedBox(height: 4.v),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_total".tr,
                                          style: CustomTextStyles
                                              .titleMediumErrorContainer17),
                                      Text("lbl_144_94".tr,
                                          style: CustomTextStyles
                                              .titleMediumSemiBold)
                                    ]),
                                SizedBox(height: 35.v),
                                CustomElevatedButton(text: "lbl_checkout".tr)
                              ]))))
                ])),
            bottomNavigationBar: Container(
                decoration: BoxDecoration(
                    color: theme.colorScheme.onError,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(8.h))),
                child: CustomImageView(
                    svgPath: ImageConstant.imgGroup1146,
                    height: 24.v,
                    width: 276.h,
                    margin: EdgeInsets.fromLTRB(50.h, 20.v, 49.h, 20.v)))));
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
