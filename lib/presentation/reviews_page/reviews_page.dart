import 'bloc/reviews_bloc.dart';
import 'models/reviews_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ReviewsPageState createState() => ReviewsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewsBloc>(
      create: (context) => ReviewsBloc(ReviewsState(
        reviewsModelObj: ReviewsModel(),
      ))
        ..add(ReviewsInitialEvent()),
      child: ReviewsPage(),
    );
  }
}

class ReviewsPageState extends State<ReviewsPage>
    with AutomaticKeepAliveClientMixin<ReviewsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ReviewsBloc, ReviewsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 19.v,
                        right: 16.h,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "lbl_4_8".tr,
                            style: CustomTextStyles.headlineLargeSemiBold,
                          ),
                          SizedBox(height: 8.v),
                          CustomRatingBar(
                            initialRating: 4,
                            itemSize: 20,
                            itemCount: 5,
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "msg_based_on_1_024_reviews".tr,
                            style: CustomTextStyles.bodyMediumErrorContainer_2,
                          ),
                          SizedBox(height: 8.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_excellent".tr,
                                style:
                                    CustomTextStyles.bodyMediumErrorContainer_2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 9.v,
                                  bottom: 7.v,
                                ),
                                child: Container(
                                  height: 4.v,
                                  width: 196.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray300,
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.93,
                                      backgroundColor: appTheme.gray300,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        theme.colorScheme.secondaryContainer,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_good".tr,
                                style:
                                    CustomTextStyles.bodyMediumErrorContainer_2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 9.v,
                                  bottom: 7.v,
                                ),
                                child: Container(
                                  height: 4.v,
                                  width: 196.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray300,
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.32,
                                      backgroundColor: appTheme.gray300,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        appTheme.green500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_average".tr,
                                style:
                                    CustomTextStyles.bodyMediumErrorContainer_2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 7.v,
                                  bottom: 9.v,
                                ),
                                child: Container(
                                  height: 4.v,
                                  width: 196.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray300,
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.17,
                                      backgroundColor: appTheme.gray300,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        theme.colorScheme.onPrimaryContainer,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_bellow_average".tr,
                                style:
                                    CustomTextStyles.bodyMediumErrorContainer_2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 7.v,
                                  bottom: 9.v,
                                ),
                                child: Container(
                                  height: 4.v,
                                  width: 196.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray300,
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.09,
                                      backgroundColor: appTheme.gray300,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        appTheme.orange700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_poor".tr,
                                style:
                                    CustomTextStyles.bodyMediumErrorContainer_2,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 9.v,
                                  bottom: 7.v,
                                ),
                                child: Container(
                                  height: 4.v,
                                  width: 196.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray300,
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.04,
                                      backgroundColor: appTheme.gray300,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        appTheme.redA400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 27.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse533x33,
                                height: 33.adaptSize,
                                width: 33.adaptSize,
                                radius: BorderRadius.circular(
                                  16.h,
                                ),
                                margin: EdgeInsets.only(top: 3.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_ariana_peter".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    SizedBox(height: 1.v),
                                    CustomRatingBar(
                                      initialRating: 4,
                                      itemSize: 14,
                                      itemCount: 5,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 7.v),
                                child: Text(
                                  "lbl_1_day_ago".tr,
                                  style: CustomTextStyles
                                      .bodyMediumErrorContainer_3,
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 291.h,
                              margin: EdgeInsets.only(
                                left: 41.h,
                                top: 12.v,
                                right: 11.h,
                              ),
                              child: Text(
                                "msg_it_is_a_long_established".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyMediumInterErrorContainer_1,
                              ),
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse51,
                                height: 33.adaptSize,
                                width: 33.adaptSize,
                                radius: BorderRadius.circular(
                                  16.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_nancy_wheeler".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    CustomRatingBar(
                                      initialRating: 4,
                                      itemSize: 14,
                                      itemCount: 5,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 7.v,
                                ),
                                child: Text(
                                  "lbl_1_day_ago".tr,
                                  style: CustomTextStyles
                                      .bodyMediumErrorContainer_3,
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 291.h,
                              margin: EdgeInsets.only(
                                left: 41.h,
                                top: 12.v,
                                right: 11.h,
                              ),
                              child: Text(
                                "msg_it_is_a_long_established".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyMediumInterErrorContainer_1,
                              ),
                            ),
                          ),
                          SizedBox(height: 28.v),
                          CustomElevatedButton(
                            text: "lbl_write_a_review".tr,
                          ),
                        ],
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
