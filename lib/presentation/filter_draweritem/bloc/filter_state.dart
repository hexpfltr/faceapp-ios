// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

/// Represents the state of Filter in the application.
class FilterState extends Equatable {
  FilterState({
    this.priceController,
    this.maxController,
    this.filterModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? maxController;

  FilterModel? filterModelObj;

  @override
  List<Object?> get props => [
        priceController,
        maxController,
        filterModelObj,
      ];
  FilterState copyWith({
    TextEditingController? priceController,
    TextEditingController? maxController,
    FilterModel? filterModelObj,
  }) {
    return FilterState(
      priceController: priceController ?? this.priceController,
      maxController: maxController ?? this.maxController,
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}
