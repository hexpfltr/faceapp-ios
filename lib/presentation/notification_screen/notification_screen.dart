import '../notification_screen/widgets/sectionlisttoda_item_widget.dart';
import 'bloc/notification_bloc.dart';
import 'models/notification_model.dart';
import 'models/sectionlisttoda_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
        create: (context) => NotificationBloc(
            NotificationState(notificationModelObj: NotificationModel()))
          ..add(NotificationInitialEvent()),
        child: NotificationScreen());
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
                title: AppbarSubtitle1(text: "lbl_notifications".tr)),
            body: Padding(
                padding: EdgeInsets.fromLTRB(16.h, 25.v, 16.h, 5.v),
                child: BlocSelector<NotificationBloc, NotificationState,
                        NotificationModel?>(
                    selector: (state) => state.notificationModelObj,
                    builder: (context, notificationModelObj) {
                      return GroupedListView<SectionlisttodaItemModel, String>(
                          shrinkWrap: true,
                          stickyHeaderBackgroundColor: Colors.transparent,
                          elements:
                              notificationModelObj?.sectionlisttodaItemList ??
                                  [],
                          groupBy: (element) => element.groupBy!,
                          sort: false,
                          groupSeparatorBuilder: (String value) {
                            return Padding(
                                padding:
                                    EdgeInsets.only(top: 30.v, bottom: 12.v),
                                child: Text(value,
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(
                                            color: theme.colorScheme.primary)));
                          },
                          itemBuilder: (context, model) {
                            return SectionlisttodaItemWidget(model);
                          },
                          separator: SizedBox(height: 16.v));
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
