// ignore_for_file: must_be_immutable

part of 'checkout_bloc.dart';

/// Represents the state of Checkout in the application.
class CheckoutState extends Equatable {
  CheckoutState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.checkoutModelObj,
  });

  CheckoutModel? checkoutModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        checkoutModelObj,
      ];
  CheckoutState copyWith({
    String? radioGroup,
    String? radioGroup1,
    CheckoutModel? checkoutModelObj,
  }) {
    return CheckoutState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      checkoutModelObj: checkoutModelObj ?? this.checkoutModelObj,
    );
  }
}
