// ignore_for_file: must_be_immutable

part of 'information_bloc.dart';

/// Represents the state of Information in the application.
class InformationState extends Equatable {
  InformationState({
    this.nameController,
    this.addressController,
    this.mobileNumberController,
    this.informationModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? addressController;

  TextEditingController? mobileNumberController;

  InformationModel? informationModelObj;

  @override
  List<Object?> get props => [
        nameController,
        addressController,
        mobileNumberController,
        informationModelObj,
      ];
  InformationState copyWith({
    TextEditingController? nameController,
    TextEditingController? addressController,
    TextEditingController? mobileNumberController,
    InformationModel? informationModelObj,
  }) {
    return InformationState(
      nameController: nameController ?? this.nameController,
      addressController: addressController ?? this.addressController,
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      informationModelObj: informationModelObj ?? this.informationModelObj,
    );
  }
}
