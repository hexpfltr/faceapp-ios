import 'bloc/reviews_tab_container_bloc.dart';
import 'models/reviews_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/reviews_page/reviews_page.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';

class ReviewsTabContainerScreen extends StatefulWidget {
  const ReviewsTabContainerScreen({Key? key}) : super(key: key);

  @override
  ReviewsTabContainerScreenState createState() =>
      ReviewsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewsTabContainerBloc>(
        create: (context) => ReviewsTabContainerBloc(ReviewsTabContainerState(
            reviewsTabContainerModelObj: ReviewsTabContainerModel()))
          ..add(ReviewsTabContainerInitialEvent()),
        child: ReviewsTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class ReviewsTabContainerScreenState extends State<ReviewsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ReviewsTabContainerBloc, ReviewsTabContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  leadingWidth: 56.h,
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleft,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle1(text: "lbl_reviews".tr)),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 24.v),
                    Container(
                        height: 52.v,
                        width: 343.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray20003,
                            borderRadius: BorderRadius.circular(10.h)),
                        child: TabBar(
                            controller: tabviewController,
                            labelPadding: EdgeInsets.zero,
                            labelColor: appTheme.whiteA700,
                            labelStyle: TextStyle(
                                fontSize: 16.fSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                            unselectedLabelColor: theme.colorScheme.primary,
                            unselectedLabelStyle: TextStyle(
                                fontSize: 16.fSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                            indicator: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(10.h)),
                            tabs: [
                              Tab(child: Text("lbl_positive".tr)),
                              Tab(child: Text("lbl_negetive".tr))
                            ])),
                    SizedBox(
                        height: 642.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              ReviewsPage.builder(context),
                              ReviewsPage.builder(context)
                            ]))
                  ]))));
    });
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
