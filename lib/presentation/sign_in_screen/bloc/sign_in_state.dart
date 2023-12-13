// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.nameController,
    this.passwordController,
    this.isShowPassword = true,
    this.signInModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? passwordController;

  SignInModel? signInModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        nameController,
        passwordController,
        isShowPassword,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? nameController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      nameController: nameController ?? this.nameController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
