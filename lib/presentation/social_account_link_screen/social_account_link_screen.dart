import '../social_account_link_screen/widgets/facebookprofile_item_widget.dart';
import 'bloc/social_account_link_bloc.dart';
import 'models/facebookprofile_item_model.dart';
import 'models/social_account_link_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';

class SocialAccountLinkScreen extends StatelessWidget {
  const SocialAccountLinkScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SocialAccountLinkBloc>(
        create: (context) => SocialAccountLinkBloc(SocialAccountLinkState(
            socialAccountLinkModelObj: SocialAccountLinkModel()))
          ..add(SocialAccountLinkInitialEvent()),
        child: SocialAccountLinkScreen());
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
                title: AppbarSubtitle1(text: "lbl_social_network".tr)),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: BlocSelector<SocialAccountLinkBloc,
                        SocialAccountLinkState, SocialAccountLinkModel?>(
                    selector: (state) => state.socialAccountLinkModelObj,
                    builder: (context, socialAccountLinkModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 15.v);
                          },
                          itemCount: socialAccountLinkModelObj
                                  ?.facebookprofileItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            FacebookprofileItemModel model =
                                socialAccountLinkModelObj
                                        ?.facebookprofileItemList[index] ??
                                    FacebookprofileItemModel();
                            return FacebookprofileItemWidget(model);
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
