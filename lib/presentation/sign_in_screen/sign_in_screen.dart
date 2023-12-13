import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/core/utils/validation_functions.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
        create: (context) =>
            SignInBloc(SignInState(signInModelObj: SignInModel()))
              ..add(SignInInitialEvent()),
        child: SignInScreen());
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
                title: AppbarSubtitle1(text: "lbl_let_s_sign_in".tr)),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 20.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 144.h,
                                  child: Text("lbl_welcome_back".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.headlineLarge!
                                          .copyWith(height: 1.30))),
                              SizedBox(height: 49.v),
                              BlocSelector<SignInBloc, SignInState,
                                      TextEditingController?>(
                                  selector: (state) => state.nameController,
                                  builder: (context, nameController) {
                                    return CustomTextFormField(
                                        controller: nameController,
                                        hintText: "lbl_name".tr,
                                        validator: (value) {
                                          if (!isText(value)) {
                                            return "Please enter valid text";
                                          }
                                          return null;
                                        });
                                  }),
                              SizedBox(height: 20.v),
                              BlocBuilder<SignInBloc, SignInState>(
                                  builder: (context, state) {
                                return CustomTextFormField(
                                    controller: state.passwordController,
                                    hintText: "lbl_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    suffix: InkWell(
                                        onTap: () {
                                          context.read<SignInBloc>().add(
                                              ChangePasswordVisibilityEvent(
                                                  value:
                                                      !state.isShowPassword));
                                        },
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 18.v, 16.h, 18.v),
                                            child: CustomImageView(
                                                svgPath: state.isShowPassword
                                                    ? ImageConstant.imgLocation
                                                    : ImageConstant
                                                        .imgLocation))),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 52.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: state.isShowPassword,
                                    contentPadding: EdgeInsets.only(
                                        left: 16.h, top: 14.v, bottom: 14.v));
                              }),
                              SizedBox(height: 13.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("lbl_forgot_password".tr,
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(height: 121.v),
                              CustomElevatedButton(
                                  height: 44.v, text: "lbl_sign_in".tr),
                              SizedBox(height: 12.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "msg_don_t_have_an_account2".tr,
                                            style: CustomTextStyles
                                                .bodyMediumErrorContainer13),
                                        TextSpan(
                                            text: "lbl_sign_up".tr,
                                            style: CustomTextStyles
                                                .labelLargePrimary13)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 47.v),
                              Row(children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 17.v, bottom: 16.v),
                                    child: SizedBox(
                                        width: 105.h,
                                        child: Divider(
                                            color: theme.colorScheme.primary))),
                                CustomElevatedButton(
                                    height: 35.v,
                                    width: 133.h,
                                    text: "msg_or_continue_with".tr,
                                    buttonStyle: CustomButtonStyles.fillWhiteA,
                                    buttonTextStyle:
                                        theme.textTheme.bodyMedium!),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 17.v, bottom: 16.v),
                                    child: SizedBox(
                                        width: 105.h,
                                        child: Divider(
                                            color: theme.colorScheme.primary)))
                              ]),
                              SizedBox(height: 27.v),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomElevatedButton(
                                        width: 164.h,
                                        text: "lbl_google".tr,
                                        leftIcon: Container(
                                            margin:
                                                EdgeInsets.only(right: 16.h),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgFlatcoloriconsgoogle)),
                                        buttonStyle:
                                            CustomButtonStyles.fillGrayTL7,
                                        buttonTextStyle:
                                            CustomTextStyles.bodyMedium15_1),
                                    CustomElevatedButton(
                                        width: 163.h,
                                        text: "lbl_apple".tr,
                                        leftIcon: Container(
                                            margin:
                                                EdgeInsets.only(right: 16.h),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgUimapple)),
                                        buttonStyle:
                                            CustomButtonStyles.fillGrayTL7,
                                        buttonTextStyle:
                                            CustomTextStyles.bodyMedium15_1)
                                  ])
                            ]))))));
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
