import 'bloc/filter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_rating_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FilterDraweritem extends StatelessWidget {
  const FilterDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 303.h,
        padding: EdgeInsets.all(3.h),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 42.v,
              ),
              child: Text(
                "lbl_category".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            CustomElevatedButton(
              height: 31.v,
              width: 83.h,
              text: "lbl_consilor".tr,
              margin: EdgeInsets.only(
                left: 13.h,
                top: 9.v,
              ),
              buttonStyle: CustomButtonStyles.fillGrayTL7,
              buttonTextStyle: CustomTextStyles.bodyMediumErrorContainer_2,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 20.v),
                child: Divider(
                  indent: 13.h,
                  endIndent: 12.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 11.v,
              ),
              child: Text(
                "",
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 13.v,
                  right: 12.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      height: 31.v,
                      width: 83.h,
                      text: "lbl_la_girl".tr,
                      buttonStyle: CustomButtonStyles.fillGrayTL7,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumErrorContainer_2,
                    ),
                    CustomElevatedButton(
                      height: 31.v,
                      width: 94.h,
                      text: "lbl_pinkflash".tr,
                      margin: EdgeInsets.only(left: 10.h),
                      buttonStyle: CustomButtonStyles.fillGrayTL7,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumErrorContainer_2,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Text(
                        "lbl_imagic".tr,
                        style: CustomTextStyles.bodyMediumErrorContainer_2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 10.v,
              ),
              child: Row(
                children: [
                  CustomElevatedButton(
                    height: 31.v,
                    width: 83.h,
                    text: "lbl_l_a_girl2".tr,
                    buttonStyle: CustomButtonStyles.fillGrayTL7,
                    buttonTextStyle:
                        CustomTextStyles.bodyMediumErrorContainer_2,
                  ),
                  CustomElevatedButton(
                    height: 31.v,
                    width: 94.h,
                    text: "lbl_focallure".tr,
                    margin: EdgeInsets.only(left: 10.h),
                    buttonStyle: CustomButtonStyles.fillGrayTL7,
                    buttonTextStyle:
                        CustomTextStyles.bodyMediumErrorContainer_2,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 15.v),
                child: Divider(
                  indent: 13.h,
                  endIndent: 12.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 10.v,
              ),
              child: Text(
                "lbl_service".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 13.v,
                  right: 14.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      height: 31.v,
                      width: 114.h,
                      text: "lbl_installment".tr,
                      buttonStyle: CustomButtonStyles.fillGrayTL7,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumErrorContainer_2,
                    ),
                    CustomElevatedButton(
                      height: 31.v,
                      width: 145.h,
                      text: "msg_cash_on_delivery".tr,
                      margin: EdgeInsets.only(left: 10.h),
                      buttonStyle: CustomButtonStyles.fillGrayTL7,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumErrorContainer_2,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 10.v,
                  right: 14.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomElevatedButton(
                      height: 31.v,
                      width: 143.h,
                      text: "msg_fulfilled_by_app".tr,
                      buttonStyle: CustomButtonStyles.fillGrayTL7,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumErrorContainer_2,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 9.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Text(
                        "lbl_free_shipping".tr,
                        style: CustomTextStyles.bodyMediumErrorContainer_2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 15.v),
                child: Divider(
                  indent: 13.h,
                  endIndent: 12.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 25.v,
              ),
              child: Text(
                "lbl_location".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 12.v,
              ),
              child: Row(
                children: [
                  CustomElevatedButton(
                    height: 31.v,
                    width: 83.h,
                    text: "lbl_china".tr,
                    buttonStyle: CustomButtonStyles.fillGrayTL7,
                    buttonTextStyle:
                        CustomTextStyles.bodyMediumErrorContainer_2,
                  ),
                  CustomElevatedButton(
                    height: 31.v,
                    width: 108.h,
                    text: "lbl_bangladesh".tr,
                    margin: EdgeInsets.only(left: 10.h),
                    buttonStyle: CustomButtonStyles.fillGrayTL7,
                    buttonTextStyle:
                        CustomTextStyles.bodyMediumErrorContainer_2,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 20.v),
                child: Divider(
                  indent: 13.h,
                  endIndent: 12.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 15.v,
              ),
              child: Text(
                "lbl_price".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 12.v,
                  right: 14.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocSelector<FilterBloc, FilterState,
                        TextEditingController?>(
                      selector: (state) => state.priceController,
                      builder: (context, priceController) {
                        return CustomTextFormField(
                          width: 108.h,
                          controller: priceController,
                          hintText: "lbl_min".tr,
                          hintStyle:
                              CustomTextStyles.bodyMediumErrorContainer_2,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 5.v,
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      child: Text(
                        "lbl2".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    BlocSelector<FilterBloc, FilterState,
                        TextEditingController?>(
                      selector: (state) => state.maxController,
                      builder: (context, maxController) {
                        return CustomTextFormField(
                          width: 108.h,
                          controller: maxController,
                          hintText: "lbl_max".tr,
                          hintStyle:
                              CustomTextStyles.bodyMediumErrorContainer_2,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 5.v,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 20.v),
                child: Divider(
                  indent: 13.h,
                  endIndent: 12.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 18.v,
              ),
              child: Text(
                "lbl_rating".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            CustomRatingBar(
              margin: EdgeInsets.only(
                left: 11.h,
                top: 7.v,
              ),
              initialRating: 0,
              itemSize: 22,
            ),
            SizedBox(height: 62.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomElevatedButton(
                  width: 143.h,
                  text: "lbl_reset".tr,
                  buttonStyle: CustomButtonStyles.fillGray1,
                  buttonTextStyle: CustomTextStyles.titleSmall15,
                ),
                CustomElevatedButton(
                  width: 152.h,
                  text: "lbl_complete".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary1,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
