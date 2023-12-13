import 'bloc/complete_bloc.dart';
import 'models/complete_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CompleteBloc>(
      create: (context) => CompleteBloc(CompleteState(
        completeModelObj: CompleteModel(),
      ))
        ..add(CompleteInitialEvent()),
      child: CompleteScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<CompleteBloc, CompleteState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCheckmark,
                    height: 97.v,
                    width: 87.h,
                  ),
                  Container(
                    width: 278.h,
                    margin: EdgeInsets.only(
                      left: 33.h,
                      top: 40.v,
                      right: 32.h,
                    ),
                    child: Text(
                      "msg_order_completed".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeErrorContainer.copyWith(
                        height: 1.67,
                      ),
                    ),
                  ),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                    text: "lbl_my_orders".tr,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
