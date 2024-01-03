import 'package:dartz/dartz.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/api/transfer_api/transfer_rest_client.dart';
import 'package:yalla_reisen_withspringboot/app/helpers/response_failure_handler.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/data/models/transport_vehicle_dto.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/domain/repositories/transport_vehicle_repository.dart';

class TransportVehicleRepositoryImpl implements TransportVehicleRepository {
  TransferRestClient transferRestClient;

  TransportVehicleRepositoryImpl({required this.transferRestClient});

  @override
  Future<Either<ApiFailure, TransportVehicleDTO>> createTransferVehicle(
      {required TransportVehicleDTO transportVehicleDTO}) async {
    return await executeAndHandleError(() => transferRestClient
        .createTransferVehicle(transportVehicleDTO: transportVehicleDTO));
  }

  @override
  Future<Either<ApiFailure, String>> deleteTransferVehicleById(
      {required int id}) async {
    return await executeAndHandleError(
        () => transferRestClient.deleteTransferVehicleById(id: id));
  }

  @override
  Future<Either<ApiFailure, List<TransportVehicleDTO>>>
      getAllTransferVehicle() async {
    return await executeAndHandleError(
        () => transferRestClient.getAllTransferVehicle());
  }

  @override
  Future<Either<ApiFailure, TransportVehicleDTO>> getTransferVehicleById(
      {required int id}) async {
    return await executeAndHandleError(
        () => transferRestClient.getTransferVehicleById(id: id));
  }

  @override
  Future<Either<ApiFailure, TransportVehicleDTO>> updateTransferVehicleById(
      {required int id,
      required TransportVehicleDTO transportVehicleDTO}) async {
    return await executeAndHandleError(() =>
        transferRestClient.updateTransferVehicleById(
            id: id, transportVehicleDTO: transportVehicleDTO));
  }
}
