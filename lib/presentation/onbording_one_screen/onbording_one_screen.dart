import 'bloc/onbording_one_bloc.dart';
import 'models/onbording_one_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/custom_icon_button.dart';

class OnbordingOneScreen extends StatelessWidget {
  const OnbordingOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnbordingOneBloc>(
      create: (context) => OnbordingOneBloc(OnbordingOneState(
        onbordingOneModelObj: OnbordingOneModel(),
      ))
        ..add(OnbordingOneInitialEvent()),
      child: OnbordingOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<OnbordingOneBloc, OnbordingOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgOnbordingone,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 13.v,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "lbl_skip".tr,
                        style: CustomTextStyles.titleMediumGray20003,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "lbl_cool_product".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    Container(
                      width: 285.h,
                      margin: EdgeInsets.only(
                        left: 29.h,
                        top: 14.v,
                        right: 29.h,
                      ),
                      child: Text(
                        "msg_we_create_products".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumWhiteA700_1.copyWith(
                          height: 1.86,
                        ),
                      ),
                    ),
                    SizedBox(height: 39.v),
                    SizedBox(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(18.h),
                            alignment: Alignment.center,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 80.adaptSize,
                              width: 80.adaptSize,
                              child: CircularProgressIndicator(
                                value: 0.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 37.v),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
