// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

/// Represents the state of ResetPassword in the application.
class ResetPasswordState extends Equatable {
  ResetPasswordState({
    this.newpasswordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.resetPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  ResetPasswordModel? resetPasswordModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        resetPasswordModelObj,
      ];
  ResetPasswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    ResetPasswordModel? resetPasswordModelObj,
  }) {
    return ResetPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      resetPasswordModelObj:
          resetPasswordModelObj ?? this.resetPasswordModelObj,
    );
  }
}
