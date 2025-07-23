import 'package:debttracker/feature_login/data/data_source/login_dao.dart';
import 'package:debttracker/feature_login/data/data_source/login_dao_impl.dart';
import 'package:debttracker/feature_login/data/repository/login_repository_impl.dart';
import 'package:debttracker/feature_login/domain/repository/login_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginRepProvider = Provider<LoginRepository>((ref) {
  final dao = ref.watch(loginDaoProvider);
  return LoginRepositoryImpl(dao);
});

final loginDaoProvider = Provider<LoginDao>((ref) => LoginDaoImpl());
