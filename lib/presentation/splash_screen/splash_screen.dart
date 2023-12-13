import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray100,
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 171.v),
                  child: Column(children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgBag11,
                        height: 191.adaptSize,
                        width: 191.adaptSize),
                    SizedBox(height: 25.v),
                    Text("lbl_fashionista".tr,
                        style: CustomTextStyles.headlineLargeQuicksandLime900),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }
}
