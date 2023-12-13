import '../popular_items_screen/widgets/productdetails_item_widget.dart';
import 'bloc/popular_items_bloc.dart';
import 'models/popular_items_model.dart';
import 'models/productdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';

class PopularItemsScreen extends StatelessWidget {
  const PopularItemsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PopularItemsBloc>(
        create: (context) => PopularItemsBloc(
            PopularItemsState(popularItemsModelObj: PopularItemsModel()))
          ..add(PopularItemsInitialEvent()),
        child: PopularItemsScreen());
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
                title: AppbarSubtitle1(text: "lbl_popular_items".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgSearchPrimary,
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 13.v))
                ]),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: BlocSelector<PopularItemsBloc, PopularItemsState,
                        PopularItemsModel?>(
                    selector: (state) => state.popularItemsModelObj,
                    builder: (context, popularItemsModelObj) {
                      return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 255.v,
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 16.h,
                                  crossAxisSpacing: 16.h),
                          physics: BouncingScrollPhysics(),
                          itemCount: popularItemsModelObj
                                  ?.productdetailsItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            ProductdetailsItemModel model = popularItemsModelObj
                                    ?.productdetailsItemList[index] ??
                                ProductdetailsItemModel();
                            return ProductdetailsItemWidget(model);
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
