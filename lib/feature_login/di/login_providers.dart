import 'package:debttracker/core/di/providers.dart';
import 'package:debttracker/feature_login/data/data_source/login_dao.dart';
import 'package:debttracker/feature_login/data/data_source/login_dao_impl.dart';
import 'package:debttracker/feature_login/data/repository/login_repository_impl.dart';
import 'package:debttracker/feature_login/domain/repository/login_repository.dart';
import 'package:debttracker/feature_login/domain/use_case/login.dart';
import 'package:debttracker/feature_login/domain/use_case/login_use_cases.dart';
import 'package:debttracker/feature_login/presentation/login_ui_event.dart';
import 'package:debttracker/feature_login/presentation/login_viewmodel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_providers.g.dart';

@riverpod
Stream<LoginUiEvent> loginUiEvent(Ref ref) =>
    ref.watch(loginViewmodelProvider.notifier).uiEventStream;

@Riverpod(keepAlive: true)
LoginDao loginDao(Ref ref) => LoginDaoImpl(ref.watch(apiServiceProvider));

@Riverpod(keepAlive: true)
LoginRepository loginRepository(Ref ref) =>
    LoginRepositoryImpl(ref.watch(loginDaoProvider));

@Riverpod(keepAlive: true)
LoginUseCases loginUseCases(Ref ref) {
  LoginRepository repository = ref.watch(loginRepositoryProvider);
  return LoginUseCases(login: Login(repository));
}
