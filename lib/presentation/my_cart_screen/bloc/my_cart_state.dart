// ignore_for_file: must_be_immutable

part of 'my_cart_bloc.dart';

/// Represents the state of MyCart in the application.
class MyCartState extends Equatable {
  MyCartState({this.myCartModelObj});

  MyCartModel? myCartModelObj;

  @override
  List<Object?> get props => [
        myCartModelObj,
      ];
  MyCartState copyWith({MyCartModel? myCartModelObj}) {
    return MyCartState(
      myCartModelObj: myCartModelObj ?? this.myCartModelObj,
    );
  }
}
