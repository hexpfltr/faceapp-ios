// ignore_for_file: must_be_immutable

part of 'explore_shop_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreShop widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreShopEvent extends Equatable {}

/// Event that is dispatched when the ExploreShop widget is first created.
class ExploreShopInitialEvent extends ExploreShopEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ExploreShopEvent {
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
