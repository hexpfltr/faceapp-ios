import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 31.v,
                      ),
                      child: IntrinsicWidth(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 11.v),
                                      child: Column(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgClockWhiteA70025x24,
                                            height: 25.v,
                                            width: 24.h,
                                            alignment: Alignment.centerRight,
                                            margin: EdgeInsets.only(right: 4.h),
                                          ),
                                          SizedBox(height: 209.v),
                                          Text(
                                            "msg_casual_jeans_shoes".tr,
                                            style: CustomTextStyles
                                                .bodyMediumInter_2,
                                          ),
                                          SizedBox(height: 9.v),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumOrange700,
                                                ),
                                                TextSpan(
                                                  text: "lbl_165_002".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumSemiBold16,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 34.h,
                                        bottom: 3.v,
                                      ),
                                      child: Column(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgClockWhiteA70026x26,
                                            height: 26.adaptSize,
                                            width: 26.adaptSize,
                                          ),
                                          SizedBox(height: 11.v),
                                          Text(
                                            "msg_casual_jeans_shoes".tr,
                                            style: CustomTextStyles
                                                .bodyMediumInter_2,
                                          ),
                                          SizedBox(height: 5.v),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumOrange700,
                                                ),
                                                TextSpan(
                                                  text: "lbl_165_002".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumSemiBold16,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.h,
                                        bottom: 7.v,
                                      ),
                                      child: Column(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgClockWhiteA70026x26,
                                            height: 26.adaptSize,
                                            width: 26.adaptSize,
                                          ),
                                          SizedBox(height: 12.v),
                                          Text(
                                            "msg_casual_jeans_shoes".tr,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .bodyMediumInter_2,
                                          ),
                                          SizedBox(height: 12.v),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumOrange700,
                                                ),
                                                TextSpan(
                                                  text: "lbl_165_002".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumSemiBold16,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 30.v,
                                right: 16.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_populer_items".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 4.v),
                                    child: Text(
                                      "lbl_see_all".tr,
                                      style:
                                          CustomTextStyles.titleSmallOrange700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24.v,
                                  width: 88.h,
                                  margin: EdgeInsets.only(bottom: 229.v),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          "lbl_black_jacket".tr,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          "lbl_246_00".tr,
                                          style: CustomTextStyles
                                              .titleMediumSemiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgFrame19,
                                  height: 1.adaptSize,
                                  width: 1.adaptSize,
                                ),
                                Container(
                                  height: 24.v,
                                  width: 134.h,
                                  margin: EdgeInsets.only(
                                    left: 17.h,
                                    bottom: 229.v,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          "msg_casual_jeans_shoes".tr,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          "lbl_165_00".tr,
                                          style: CustomTextStyles
                                              .titleMediumSemiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(
                                  flex: 49,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 3.v,
                                    bottom: 233.v,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "lbl_black_jacket".tr,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                      Text(
                                        "lbl_246_00".tr,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .titleMediumSemiBold,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
