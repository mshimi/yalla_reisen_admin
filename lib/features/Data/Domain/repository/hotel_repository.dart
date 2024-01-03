import 'package:dartz/dartz.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_request.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_response.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/adress.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/hotel_model.dart';

abstract class HotelRepository {
  Future<Either<ApiFailure, PageResponse<HotelModel>>> getAllHotelPagination(
      {required PageRequest pageRequest});


 Future<Either<ApiFailure, HotelModel>> getHotelById(
      {required int id});


 Future<Either<ApiFailure, String>> deleteHotel(
      {required int id});
      

 Future<Either<ApiFailure, HotelModel>> saveHotel(
      {required int parentId, required HotelModel hotelModel,required AddressModel addressModel});

       Future<Either<ApiFailure, HotelModel>> updateHotel(
      {required int id, required HotelModel hotelModel});

}
