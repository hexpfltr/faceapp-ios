// ignore_for_file: must_be_immutable

part of 'product_view_bloc.dart';

/// Represents the state of ProductView in the application.
class ProductViewState extends Equatable {
  ProductViewState({this.productViewModelObj});

  ProductViewModel? productViewModelObj;

  @override
  List<Object?> get props => [
        productViewModelObj,
      ];
  ProductViewState copyWith({ProductViewModel? productViewModelObj}) {
    return ProductViewState(
      productViewModelObj: productViewModelObj ?? this.productViewModelObj,
    );
  }
}
