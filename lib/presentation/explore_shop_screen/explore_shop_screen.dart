import '../explore_shop_screen/widgets/chipviewelecton_item_widget.dart';
import 'bloc/explore_shop_bloc.dart';
import 'models/chipviewelecton_item_model.dart';
import 'models/explore_shop_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';

class ExploreShopScreen extends StatelessWidget {
  const ExploreShopScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreShopBloc>(
      create: (context) => ExploreShopBloc(ExploreShopState(
        exploreShopModelObj: ExploreShopModel(),
      ))
        ..add(ExploreShopInitialEvent()),
      child: ExploreShopScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 32.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 192.h,
                child: Text(
                  "msg_what_products_you".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineMediumMedium.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              Container(
                width: 294.h,
                margin: EdgeInsets.only(
                  top: 13.v,
                  right: 49.h,
                ),
                child: Text(
                  "msg_choose_which_you".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLarge_1.copyWith(
                    height: 1.75,
                  ),
                ),
              ),
              SizedBox(height: 35.v),
              BlocSelector<ExploreShopBloc, ExploreShopState,
                  ExploreShopModel?>(
                selector: (state) => state.exploreShopModelObj,
                builder: (context, exploreShopModelObj) {
                  return Wrap(
                    runSpacing: 8.v,
                    spacing: 8.h,
                    children: List<Widget>.generate(
                      exploreShopModelObj?.chipviewelectonItemList.length ?? 0,
                      (index) {
                        ChipviewelectonItemModel model = exploreShopModelObj
                                ?.chipviewelectonItemList[index] ??
                            ChipviewelectonItemModel();

                        return ChipviewelectonItemWidget(
                          model,
                          onSelectedChipView: (value) {
                            context.read<ExploreShopBloc>().add(
                                UpdateChipViewEvent(
                                    index: index, isSelected: value));
                          },
                        );
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_explore_shop".tr,
          margin: EdgeInsets.only(
            left: 16.h,
            right: 16.h,
            bottom: 36.v,
          ),
        ),
      ),
    );
  }
}
