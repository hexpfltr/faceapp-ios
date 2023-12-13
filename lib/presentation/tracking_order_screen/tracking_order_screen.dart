import 'bloc/tracking_order_bloc.dart';
import 'dart:async';
import 'models/tracking_order_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TrackingOrderScreen extends StatelessWidget {
  TrackingOrderScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<TrackingOrderBloc>(
        create: (context) => TrackingOrderBloc(
            TrackingOrderState(trackingOrderModelObj: TrackingOrderModel()))
          ..add(TrackingOrderInitialEvent()),
        child: TrackingOrderScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TrackingOrderBloc, TrackingOrderState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: SizedBox(
                      height: 768.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        SizedBox(
                            height: 768.v,
                            width: double.maxFinite,
                            child: GoogleMap(
                                mapType: MapType.normal,
                                initialCameraPosition: CameraPosition(
                                    target: LatLng(
                                        37.43296265331129, -122.08832357078792),
                                    zoom: 14.4746),
                                onMapCreated: (GoogleMapController controller) {
                                  googleMapController.complete(controller);
                                },
                                zoomControlsEnabled: false,
                                zoomGesturesEnabled: false,
                                myLocationButtonEnabled: false,
                                myLocationEnabled: false)),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, right: 16.h, bottom: 68.v),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGroup1264,
                                          height: 94.v,
                                          width: 183.h),
                                      SizedBox(height: 213.v),
                                      Container(
                                          decoration: AppDecoration
                                              .outlinePrimary
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20.h,
                                                        top: 28.v,
                                                        right: 20.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_tracking_order"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyLarge),
                                                                SizedBox(
                                                                    height:
                                                                        3.v),
                                                                Text(
                                                                    "msg_order_no_845037"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallPrimary)
                                                              ]),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 2.v,
                                                                      bottom:
                                                                          22.v),
                                                              child: Text(
                                                                  "msg_arrived_in_16_00"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .labelLargeOrange700))
                                                        ])),
                                                SizedBox(height: 21.v),
                                                CustomElevatedButton(
                                                    text: "lbl_done".tr)
                                              ]))
                                    ]))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 5.v),
                                decoration: AppDecoration.outlinePrimary1
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderBL25),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 19.v),
                                      CustomAppBar(
                                          height: 40.v,
                                          leadingWidth: 56.h,
                                          leading: AppbarImage(
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              margin:
                                                  EdgeInsets.only(left: 16.h),
                                              onTap: () {
                                                onTapArrowleftone(context);
                                              }),
                                          centerTitle: true,
                                          title: AppbarSubtitle1(
                                              text: "lbl_tracking_order".tr))
                                    ])))
                      ])))));
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
