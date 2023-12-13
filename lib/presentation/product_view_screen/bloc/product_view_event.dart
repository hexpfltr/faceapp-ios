// ignore_for_file: must_be_immutable

part of 'product_view_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductView widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductViewEvent extends Equatable {}

/// Event that is dispatched when the ProductView widget is first created.
class ProductViewInitialEvent extends ProductViewEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ProductViewEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
