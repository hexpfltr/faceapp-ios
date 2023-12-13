import 'bloc/sign_up_sign_in_bloc.dart';
import 'models/sign_up_sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';

class SignUpSignInScreen extends StatelessWidget {
  const SignUpSignInScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpSignInBloc>(
      create: (context) => SignUpSignInBloc(SignUpSignInState(
        signUpSignInModelObj: SignUpSignInModel(),
      ))
        ..add(SignUpSignInInitialEvent()),
      child: SignUpSignInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SignUpSignInBloc, SignUpSignInState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 50.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 23.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgUnsplashw7b3edub2i,
                    height: 299.adaptSize,
                    width: 299.adaptSize,
                    radius: BorderRadius.circular(
                      149.h,
                    ),
                  ),
                  SizedBox(height: 81.v),
                  SizedBox(
                    width: 186.h,
                    child: Text(
                      "msg_discover_your_shopping".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineSmallPrimary.copyWith(
                        height: 1.32,
                      ),
                    ),
                  ),
                  Container(
                    width: 304.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 13.v,
                      right: 19.h,
                    ),
                    child: Text(
                      "msg_it_is_a_long_established2".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumErrorContainer15_1
                          .copyWith(
                        height: 1.73,
                      ),
                    ),
                  ),
                  SizedBox(height: 48.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                        width: 164.h,
                        text: "lbl_register".tr,
                      ),
                      CustomElevatedButton(
                        width: 163.h,
                        text: "lbl_sign_in".tr,
                        buttonStyle: CustomButtonStyles.fillGray,
                        buttonTextStyle: CustomTextStyles.titleMedium16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
