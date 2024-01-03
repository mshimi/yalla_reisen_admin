import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_request.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_response.dart';
import 'package:yalla_reisen_withspringboot/app/api/url.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/data/models/requestes/transfer_rate_request.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/data/models/transfer_rate_model.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/data/models/transport_vehicle_dto.dart';

part 'transfer_rest_client.g.dart';

@RestApi(baseUrl: ApiUrls.baseUrl)
abstract class TransferRestClient {
  factory TransferRestClient(Dio dio, {String baseUrl}) = _TransferRestClient;

  @GET("transfer/vehicles")
  Future<List<TransportVehicleDTO>> getAllTransferVehicle();

  @GET("transfer/vehicles/{id}")
  Future<TransportVehicleDTO> getTransferVehicleById(
      {@Path("id") required int id});

  @DELETE("admin/transfer/vehicles/{id}")
  Future<String> deleteTransferVehicleById({@Path("id") required int id});

  @POST("admin/transfer/vehicles")
  Future<TransportVehicleDTO> createTransferVehicle(
      {@Queries() required TransportVehicleDTO transportVehicleDTO});

  @PUT("admin/transfer/vehicles/{id}")
  Future<TransportVehicleDTO> updateTransferVehicleById({
    @Path("id") required int id,
    @Queries() required TransportVehicleDTO transportVehicleDTO,
  });

  @GET("admin/transfer/transferprice")
  Future<List<TransferRateModel>> getAllTransferPrices();

  @GET("admin/transfer/transferprice/{id}")
  Future<TransferRateModel> getTransferPriceById({@Path("id") required int id});

  @GET("transfer/transferprice/pagination")
  Future<PageResponse<TransferRateModel>> getAllHotels(
      {@Queries() required PageRequest pageRequest});

  @POST("transfer/transferprice")
  Future<TransferRateModel> createTransferPrice(
      {@Queries() required TransferRateRequest transferRateRequest});

  @POST("transfer/transferprice/list")
  Future<List<TransferRateModel>> createListTransferPrice(
      {@Body() required List<TransferRateRequest> items});
}
