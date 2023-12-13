import 'bloc/home_tab_container_bloc.dart';
import 'models/home_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/home_page/home_page.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';

class HomeTabContainerScreen extends StatefulWidget {
  const HomeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTabContainerScreenState createState() => HomeTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeTabContainerBloc>(
      create: (context) => HomeTabContainerBloc(HomeTabContainerState(
        homeTabContainerModelObj: HomeTabContainerModel(),
      ))
        ..add(HomeTabContainerInitialEvent()),
      child: HomeTabContainerScreen(),
    );
  }
}

class HomeTabContainerScreenState extends State<HomeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HomeTabContainerBloc, HomeTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              leadingWidth: 40.h,
              leading: AppbarImage(
                svgPath: ImageConstant.imgGroup957,
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 13.v,
                  bottom: 13.v,
                ),
              ),
              actions: [
                AppbarImage1(
                  svgPath: ImageConstant.imgSearchPrimary,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 13.v,
                    right: 13.h,
                  ),
                ),
                AppbarImage1(
                  svgPath: ImageConstant.imgNotificationsactivePrimary,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    top: 13.v,
                    right: 29.h,
                  ),
                ),
              ],
            ),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 27.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl_find_your_style".tr,
                              style: CustomTextStyles.headlineSmallPrimaryBold,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 18.v,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 33.v,
                                    width: 330.h,
                                    child: TabBar(
                                      controller: tabviewController,
                                      labelPadding: EdgeInsets.zero,
                                      labelColor: appTheme.whiteA700,
                                      labelStyle: TextStyle(
                                        fontSize: 14.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      unselectedLabelColor:
                                          theme.colorScheme.primary,
                                      unselectedLabelStyle: TextStyle(
                                        fontSize: 14.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      indicator: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius: BorderRadius.circular(
                                          7.h,
                                        ),
                                      ),
                                      tabs: [
                                        Tab(
                                          child: Text(
                                            "lbl_all".tr,
                                          ),
                                        ),
                                        Tab(
                                          child: Text(
                                            "lbl_summer".tr,
                                          ),
                                        ),
                                        Tab(
                                          child: Text(
                                            "lbl_man".tr,
                                          ),
                                        ),
                                        Tab(
                                          child: Text(
                                            "lbl_woman".tr,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 13.h,
                                      vertical: 9.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray20001.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Text(
                                      "lbl_kids".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 673.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                HomePage.builder(context),
                                HomePage.builder(context),
                                HomePage.builder(context),
                                HomePage.builder(context),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.onError,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(8.h),
                ),
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgGroup1146Errorcontainer,
                height: 24.v,
                width: 276.h,
                margin: EdgeInsets.fromLTRB(50.h, 20.v, 49.h, 20.v),
              ),
            ),
          ),
        );
      },
    );
  }
}
