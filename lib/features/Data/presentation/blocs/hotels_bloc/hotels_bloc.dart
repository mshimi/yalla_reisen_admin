import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_request.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_response.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/pagination_table/custom_data_column.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/hotel_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/hotel_model.dart';

part 'hotels_event.dart';
part 'hotels_state.dart';
part 'hotels_bloc.freezed.dart';

class HotelsBloc extends Bloc<HotelsEvent, HotelsState> {
  HotelRepository hotelRepository;
  HotelsBloc({required this.hotelRepository}) : super(HotelsState.initial()) {
    _pageRequest = PageRequest();

    on<HotelsEvent>(
      (event, emit) async {
        emit(
          await event.map(
            started: (stated) async => await _getData(),
            changePageNumber: (e) async {
              _pageRequest.pageNumber = e.pageNumber;
              return await _getData();
            },
            changePageSized: (e) async {
              _pageRequest.pageSize = e.pageSize;
              _pageRequest.pageNumber = null;
              return await _getData();
            },
            changeSortedBy: (e) async {
              _pageRequest.sortBy = e.sortBy;
              _pageRequest.sortDirection = e.sortDirection;

              return await _getData();
            },
            deleteHotel: (value) => _deleteHotel(value.id),
          ),
        );
      },
    );
  }

  Future<HotelsState> _getData() async {
    var response =
        await hotelRepository.getAllHotelPagination(pageRequest: _pageRequest);

    return response.fold((l) => const HotelsState.failed(), (r) {
      return HotelsState.hasData(
          pageResponse: r,
          hotels: r.getContent((json) => HotelModel.fromJson(json)));
    });
  }

  Future<HotelsState> _deleteHotel(int id) async {
    var response = await hotelRepository.deleteHotel(id: id);

    return response.fold((l) => const HotelsState.failed(), (r) async {
      return await _getData();
    });
  }

  late PageRequest _pageRequest;

  PageRequest get pagerequest => _pageRequest;

  List<CustomDataColumn> get columns {
    return [
      CustomDataColumn(column: "id", sortBy: "id"),
      CustomDataColumn(column: "Hotel", sortBy: "hotelName"),
      CustomDataColumn(column: "IATA", sortBy: "gCode"),
      CustomDataColumn(column: "Area", sortBy: "area.areaName"),
      CustomDataColumn(column: "City", sortBy: "area.city.cityName"),
      CustomDataColumn(
          column: "Country", sortBy: "area.city.country.countryName"),
      CustomDataColumn(column: "Delete"),
    ];
  }
}
