import '../search_screen/widgets/userprofilerow_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_model.dart';
import 'models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_search_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(SearchState(
        searchModelObj: SearchModel(),
      ))
        ..add(SearchInitialEvent()),
      child: SearchScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "lbl_search".tr,
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 23.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: BlocSelector<SearchBloc, SearchState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      controller: searchController,
                      hintText: "lbl_search".tr,
                      alignment: Alignment.center,
                      prefix: Container(
                        margin: EdgeInsets.all(16.h),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgSearchErrorcontainer,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 48.v,
                      ),
                      suffix: Container(
                        padding: EdgeInsets.fromLTRB(13.h, 12.v, 14.h, 13.v),
                        margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgSearchWhiteA700,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 48.v,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 18.v,
                ),
                child: Text(
                  "lbl_recent_search".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 12.v,
                ),
                child: IntrinsicWidth(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 58.adaptSize,
                        width: 58.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.gray400,
                          borderRadius: BorderRadius.circular(
                            10.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 58.adaptSize,
                        width: 58.adaptSize,
                        margin: EdgeInsets.only(left: 24.h),
                        decoration: BoxDecoration(
                          color: appTheme.gray400,
                          borderRadius: BorderRadius.circular(
                            10.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 58.adaptSize,
                        width: 58.adaptSize,
                        margin: EdgeInsets.only(left: 24.h),
                        decoration: BoxDecoration(
                          color: appTheme.gray400,
                          borderRadius: BorderRadius.circular(
                            10.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 58.adaptSize,
                        width: 58.adaptSize,
                        margin: EdgeInsets.only(left: 24.h),
                        decoration: BoxDecoration(
                          color: appTheme.gray400,
                          borderRadius: BorderRadius.circular(
                            10.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 58.adaptSize,
                        width: 58.adaptSize,
                        margin: EdgeInsets.only(left: 24.h),
                        decoration: BoxDecoration(
                          color: appTheme.gray400,
                          borderRadius: BorderRadius.circular(
                            10.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 36.v,
                ),
                child: Text(
                  "msg_items_that_you_may".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 10.v,
                      right: 16.h,
                    ),
                    child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
                      selector: (state) => state.searchModelObj,
                      builder: (context, searchModelObj) {
                        return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              height: 14.v,
                            );
                          },
                          itemCount:
                              searchModelObj?.userprofilerowItemList.length ??
                                  0,
                          itemBuilder: (context, index) {
                            UserprofilerowItemModel model =
                                searchModelObj?.userprofilerowItemList[index] ??
                                    UserprofilerowItemModel();
                            return UserprofilerowItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.onError,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(8.h),
            ),
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgGroup1164,
            height: 24.v,
            width: 276.h,
            margin: EdgeInsets.fromLTRB(50.h, 20.v, 49.h, 20.v),
          ),
        ),
      ),
    );
  }
}
