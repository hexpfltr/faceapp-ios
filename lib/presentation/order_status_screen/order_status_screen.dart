import '../order_status_screen/widgets/orderreceived_item_widget.dart';
import 'bloc/order_status_bloc.dart';
import 'models/order_status_model.dart';
import 'models/orderreceived_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';

class OrderStatusScreen extends StatelessWidget {
  const OrderStatusScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderStatusBloc>(
        create: (context) => OrderStatusBloc(
            OrderStatusState(orderStatusModelObj: OrderStatusModel()))
          ..add(OrderStatusInitialEvent()),
        child: OrderStatusScreen());
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
                title: AppbarSubtitle1(text: "lbl_order_status".tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgUnsplashvfrcrteqkl8,
                          height: 227.v,
                          width: 343.h,
                          radius: BorderRadius.vertical(
                              top: Radius.circular(12.h))),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 9.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL12),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgContrast,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 7.v, bottom: 6.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, bottom: 2.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_delivered".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeWhiteA700),
                                          Text("msg_drinks_june_07".tr,
                                              style: CustomTextStyles
                                                  .bodySmallWhiteA700)
                                        ]))
                              ])),
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 39.h, top: 24.v, right: 39.h),
                              child: BlocSelector<OrderStatusBloc,
                                      OrderStatusState, OrderStatusModel?>(
                                  selector: (state) =>
                                      state.orderStatusModelObj,
                                  builder: (context, orderStatusModelObj) {
                                    return ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: 5.v);
                                        },
                                        itemCount: orderStatusModelObj
                                                ?.orderreceivedItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          OrderreceivedItemModel model =
                                              orderStatusModelObj
                                                          ?.orderreceivedItemList[
                                                      index] ??
                                                  OrderreceivedItemModel();
                                          return OrderreceivedItemWidget(model);
                                        });
                                  })))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "msg_confirm_delivery".tr,
                margin:
                    EdgeInsets.only(left: 16.h, right: 16.h, bottom: 21.v))));
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
