import 'package:debttracker/core/di/providers.dart';
import 'package:debttracker/feature_login/data/data_source/login_dao.dart';
import 'package:debttracker/feature_login/data/data_source/login_dao_impl.dart';
import 'package:debttracker/feature_login/data/repository/login_repository_impl.dart';
import 'package:debttracker/feature_login/domain/repository/login_repository.dart';
import 'package:debttracker/feature_login/domain/use_case/login.dart';
import 'package:debttracker/feature_login/domain/use_case/login_use_cases.dart';
import 'package:debttracker/feature_login/presentation/login_state_holder.dart';
import 'package:debttracker/feature_login/presentation/login_ui_event.dart';
import 'package:debttracker/feature_login/presentation/login_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginRepProvider = Provider<LoginRepository>((ref) {
  final dao = ref.watch(loginDaoProvider);
  final apiService = ref.watch(apiServiceProvider);
  return LoginRepositoryImpl(dao, apiService);
});

final loginDaoProvider = Provider<LoginDao>((ref) => LoginDaoImpl());

final loginUseCasesProvider = Provider<LoginUseCases>((ref) {
  final repository = ref.watch(loginRepProvider);

  return LoginUseCases(repository, login: Login(repository));
});

final loginVMProvider = StateNotifierProvider<LoginViewmodel, LoginStateHolder>(
  (ref) {
    final loginUseCases = ref.read(loginUseCasesProvider);
    return LoginViewmodel(loginUseCases);
  },
);

final loginUiEventProvider = StreamProvider<LoginUiEvent>(
  (ref) => ref.watch(loginVMProvider.notifier).uiEventStream,
);
