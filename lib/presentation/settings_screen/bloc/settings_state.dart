// ignore_for_file: must_be_immutable

part of 'settings_bloc.dart';

/// Represents the state of Settings in the application.
class SettingsState extends Equatable {
  SettingsState({
    this.isSelectedSwitch = false,
    this.settingsModelObj,
  });

  SettingsModel? settingsModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        settingsModelObj,
      ];
  SettingsState copyWith({
    bool? isSelectedSwitch,
    SettingsModel? settingsModelObj,
  }) {
    return SettingsState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      settingsModelObj: settingsModelObj ?? this.settingsModelObj,
    );
  }
}
