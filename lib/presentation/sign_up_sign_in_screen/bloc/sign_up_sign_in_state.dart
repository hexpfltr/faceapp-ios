// ignore_for_file: must_be_immutable

part of 'sign_up_sign_in_bloc.dart';

/// Represents the state of SignUpSignIn in the application.
class SignUpSignInState extends Equatable {
  SignUpSignInState({this.signUpSignInModelObj});

  SignUpSignInModel? signUpSignInModelObj;

  @override
  List<Object?> get props => [
        signUpSignInModelObj,
      ];
  SignUpSignInState copyWith({SignUpSignInModel? signUpSignInModelObj}) {
    return SignUpSignInState(
      signUpSignInModelObj: signUpSignInModelObj ?? this.signUpSignInModelObj,
    );
  }
}
