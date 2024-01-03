import 'package:dartz/dartz.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';

abstract class AreaRepository {
  Future<Either<ApiFailure, List<AreaModel>>> getAllAreas();

  Future<Either<ApiFailure, AreaModel>> getAreaById({required int id});

  Future<Either<ApiFailure, AreaModel>> saveArea(
      {required AreaModel areaModel, required int cityId});

      Future<Either<ApiFailure, AreaModel>> updateArea(
      {required AreaModel areaModel, required int areaId});

  Future<Either<ApiFailure, String>> deleteArea({required int id});


 Future<Either<ApiFailure, List<AreaModel>>> searchAreaByKeyWord({required String keyword});

}
