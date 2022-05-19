import 'package:dartz/dartz.dart';

abstract class UseCase<E, R, P> {
  Future<Either<E, R>> call(P param);
}
