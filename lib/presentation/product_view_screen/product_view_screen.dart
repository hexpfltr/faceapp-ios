import '../product_view_screen/widgets/chipviews_item_widget.dart';
import 'bloc/product_view_bloc.dart';
import 'models/chipviews_item_model.dart';
import 'models/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_icon_button.dart';

class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductViewBloc>(
      create: (context) => ProductViewBloc(ProductViewState(
        productViewModelObj: ProductViewModel(),
      ))
        ..add(ProductViewInitialEvent()),
      child: ProductViewScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 854.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgProduct,
                    height: 451.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 26.v,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.customBorderTL302,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 42.adaptSize,
                            width: 42.adaptSize,
                            padding: EdgeInsets.all(9.h),
                            decoration: IconButtonStyleHelper.outlineGray,
                            alignment: Alignment.centerRight,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgShare,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "lbl_order_status".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                          SizedBox(height: 13.v),
                          BlocSelector<ProductViewBloc, ProductViewState,
                              ProductViewModel?>(
                            selector: (state) => state.productViewModelObj,
                            builder: (context, productViewModelObj) {
                              return Wrap(
                                runSpacing: 9.95.v,
                                spacing: 9.95.h,
                                children: List<Widget>.generate(
                                  productViewModelObj
                                          ?.chipviewsItemList.length ??
                                      0,
                                  (index) {
                                    ChipviewsItemModel model =
                                        productViewModelObj
                                                ?.chipviewsItemList[index] ??
                                            ChipviewsItemModel();

                                    return ChipviewsItemWidget(
                                      model,
                                      onSelectedChipView: (value) {
                                        context.read<ProductViewBloc>().add(
                                            UpdateChipViewEvent(
                                                index: index,
                                                isSelected: value));
                                      },
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 24.v),
                          Text(
                            "lbl_color".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                          SizedBox(height: 8.v),
                          CustomImageView(
                            svgPath: ImageConstant.imgFrame1035,
                            height: 50.v,
                            width: 330.h,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_reviews".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 4.v,
                                ),
                                child: Text(
                                  "lbl_see_all".tr,
                                  style: CustomTextStyles.titleSmallOrange700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 14.v),
                          Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgStar6,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                radius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  "msg_4_8_1_024_reviews".tr,
                                  style: CustomTextStyles
                                      .titleMediumErrorContainer,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 29.v,
                              right: 9.h,
                              bottom: 15.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 15.v,
                                    bottom: 14.v,
                                  ),
                                  child: Text(
                                    "lbl_134_98".tr,
                                    style: CustomTextStyles.titleLargeInter,
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: 57.v,
                                  width: 173.h,
                                  text: "lbl_add_to_cart".tr,
                                ),
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
          ),
        ),
      ),
    );
  }
}
