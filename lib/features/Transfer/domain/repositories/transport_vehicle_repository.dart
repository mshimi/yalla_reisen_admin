import 'package:dartz/dartz.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/data/models/transport_vehicle_dto.dart';

abstract class TransportVehicleRepository {
  Future<Either<ApiFailure, List<TransportVehicleDTO>>> getAllTransferVehicle();

  Future<Either<ApiFailure, TransportVehicleDTO>> getTransferVehicleById(
      {required int id});

  Future<Either<ApiFailure, String>> deleteTransferVehicleById(
      {required int id});

  Future<Either<ApiFailure, TransportVehicleDTO>> createTransferVehicle(
      {required TransportVehicleDTO transportVehicleDTO});

  Future<Either<ApiFailure, TransportVehicleDTO>> updateTransferVehicleById({
    required int id,
    required TransportVehicleDTO transportVehicleDTO,
  });
}
