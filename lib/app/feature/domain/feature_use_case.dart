import 'package:dartz/dartz.dart';

import '../../../core/exception/failure.dart';
import '../../../core/use_case/use_case.dart';
import 'repository/repository.dart';

class FeatureUseCase implements UseCase<Failure, String, String> {
  FeatureUseCase(this._repository);

  final Repository _repository;

  @override
  Future<Either<Failure, String>> call(String param) async {
    //buscar dados e trabalhar com eles
    //exemplo: buscar dados -> salvar no storage -> obtendo sucesso/falha
    //devolver para a store mostrar o erro / seguir o fluxo da feature

    try {
      var result = await _repository.get({"param": param});
      return Right(result);
    } catch (e) {
      return Left(e as Failure);
    }
  }
}
