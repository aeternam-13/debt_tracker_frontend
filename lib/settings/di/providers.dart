import 'package:debttracker/settings/presentation/settings_state_holder.dart';
import 'package:debttracker/settings/presentation/settings_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsVMProvider =
    StateNotifierProvider<SettingsViewmodel, SettingsStateHolder>((ref) {
      return SettingsViewmodel();
    });
