import 'package:dartz/dartz.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/api/rest_client.dart';
import 'package:yalla_reisen_withspringboot/app/helpers/response_failure_handler.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/area_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';

class AreaRepositoryImpl implements AreaRepository {
  final RestClient _restClient;
  AreaRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<Either<ApiFailure, List<AreaModel>>> getAllAreas() async {
    return await executeAndHandleError<List<AreaModel>>(
        () => _restClient.getAllAreas());
  }

  @override
  Future<Either<ApiFailure, String>> deleteArea({required int id}) async {
 return await executeAndHandleError<String>(
        () => _restClient.deleteArea(id: id));
  }

  @override
  Future<Either<ApiFailure, AreaModel>> getAreaById({required int id}) async {
  return await executeAndHandleError<AreaModel>(
        () => _restClient.getAreaById(id: id));
  }

  @override
  Future<Either<ApiFailure, AreaModel>> saveArea(
      {required AreaModel areaModel, required int cityId}) async {
     return await executeAndHandleError<AreaModel>(
        () => _restClient.saveArea(id: cityId, areaModel: areaModel));
  }

  @override
  Future<Either<ApiFailure, AreaModel>> updateArea(
      {required AreaModel areaModel, required int areaId}) async {
    return await executeAndHandleError<AreaModel>(
        () => _restClient.updateArea(id: areaId, areaModel: areaModel));
  }
  
  @override
  Future<Either<ApiFailure, List<AreaModel>>> searchAreaByKeyWord({required String keyword}) async {
 return await executeAndHandleError<List<AreaModel>>(
        () => _restClient.searchAreaByKeyWord(keyword: {"keyword" : keyword}));
  }
 
 

 
}
