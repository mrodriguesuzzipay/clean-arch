import 'package:flutter_clean_arch/app/feature/data/repository_impl/repository_impl.dart';
import 'package:flutter_clean_arch/app/feature/domain/feature_use_case.dart';
import 'package:get_it/get_it.dart';

import '../../app/feature/data/repository_impl/datasource_impl/datasource_impl.dart';
import '../../app/feature/domain/repository/datasource/datasource.dart';
import '../../app/feature/domain/repository/repository.dart';

final GetIt getIt = GetIt.I;

Future<void> setUpLocators() async {
  //datasource
  getIt.registerLazySingleton<Datasource>(() => DatasourceImpl(null));

  //repository
  getIt.registerLazySingleton<Repository>(() => RepositoryImpl(getIt<Datasource>()));

  //useCase
  getIt.registerLazySingleton<FeatureUseCase>(() => FeatureUseCase(getIt<Repository>()));
}
