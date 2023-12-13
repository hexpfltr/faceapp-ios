// ignore_for_file: must_be_immutable

part of 'onbording_one_bloc.dart';

/// Represents the state of OnbordingOne in the application.
class OnbordingOneState extends Equatable {
  OnbordingOneState({this.onbordingOneModelObj});

  OnbordingOneModel? onbordingOneModelObj;

  @override
  List<Object?> get props => [
        onbordingOneModelObj,
      ];
  OnbordingOneState copyWith({OnbordingOneModel? onbordingOneModelObj}) {
    return OnbordingOneState(
      onbordingOneModelObj: onbordingOneModelObj ?? this.onbordingOneModelObj,
    );
  }
}
