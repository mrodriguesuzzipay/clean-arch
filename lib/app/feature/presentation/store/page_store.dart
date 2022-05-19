import 'package:dartz/dartz.dart';
import 'package:flutter_clean_arch/core/di/locators.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/exception/failure.dart';
import '../../domain/feature_use_case.dart';

part 'page_store.g.dart';

class PageStore = PageStoreBase with _$PageStore;

abstract class PageStoreBase with Store {
  final FeatureUseCase _useCase = getIt<FeatureUseCase>();

  @action
  get() async {
    final Either<Failure, String> result = await _useCase("");

    result.fold(
      (Failure failure) {
        // exibir erro
      },
      (String result) => {
        //dar continuidade ao fluxo
      },
    );
  }
}
