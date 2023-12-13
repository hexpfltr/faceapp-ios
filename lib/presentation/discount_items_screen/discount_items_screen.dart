import '../discount_items_screen/widgets/discountrow_item_widget.dart';
import 'bloc/discount_items_bloc.dart';
import 'models/discount_items_model.dart';
import 'models/discountrow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';

class DiscountItemsScreen extends StatelessWidget {
  const DiscountItemsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DiscountItemsBloc>(
        create: (context) => DiscountItemsBloc(
            DiscountItemsState(discountItemsModelObj: DiscountItemsModel()))
          ..add(DiscountItemsInitialEvent()),
        child: DiscountItemsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 56.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_discount_items".tr)),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: BlocSelector<DiscountItemsBloc, DiscountItemsState,
                        DiscountItemsModel?>(
                    selector: (state) => state.discountItemsModelObj,
                    builder: (context, discountItemsModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 14.v);
                          },
                          itemCount: discountItemsModelObj
                                  ?.discountrowItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            DiscountrowItemModel model = discountItemsModelObj
                                    ?.discountrowItemList[index] ??
                                DiscountrowItemModel();
                            return DiscountrowItemWidget(model);
                          });
                    }))));
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
