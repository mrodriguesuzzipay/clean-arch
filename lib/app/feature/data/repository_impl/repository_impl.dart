import '../../domain/repository/datasource/datasource.dart';
import '../../domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  RepositoryImpl(this._datasource);

  final Datasource _datasource;

  @override
  get(Map<String, dynamic> param) => _datasource.get(param);

  @override
  post(Map<String, dynamic> param) => _datasource.post(param);
}
