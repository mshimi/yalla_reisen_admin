import 'package:dartz/dartz.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_request.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_response.dart';
import 'package:yalla_reisen_withspringboot/app/api/rest_client.dart';
import 'package:yalla_reisen_withspringboot/app/helpers/response_failure_handler.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/hotel_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/adress.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/hotel_model.dart';

class HotelRepositoryImpl implements HotelRepository {
  RestClient restClient;

  HotelRepositoryImpl({required this.restClient});

  @override
  Future<Either<ApiFailure, PageResponse<HotelModel>>> getAllHotelPagination(
      {required PageRequest pageRequest}) async {
    return await executeAndHandleError(
        () => restClient.getAllHotels(pageRequest: pageRequest));
  }

  @override
  Future<Either<ApiFailure, String>> deleteHotel({required int id}) async {
    return await executeAndHandleError(() => restClient.deleteHotel(id: id));
  }

  @override
  Future<Either<ApiFailure, HotelModel>> getHotelById({required int id}) async {
    return await executeAndHandleError(() => restClient.getHotelById(id: id));
  }

  @override
  Future<Either<ApiFailure, HotelModel>> saveHotel(
      {required int parentId, required HotelModel hotelModel, required AddressModel addressModel}) async {
    return await executeAndHandleError(
        () => restClient.createHotel(areaId: parentId, hotelModel: hotelModel, addressModel: addressModel));
  }

  @override
  Future<Either<ApiFailure, HotelModel>> updateHotel(
      {required int id, required HotelModel hotelModel}) async {
    return await executeAndHandleError(
        () => restClient.updateHotel(hotelId: id, hotelModel: hotelModel));
  }
}
