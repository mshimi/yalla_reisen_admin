import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/api/rest_client.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/area_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';

part 'areas_event.dart';
part 'areas_state.dart';
part 'areas_bloc.freezed.dart';

class AreasBloc extends Bloc<AreasEvent, AreasState> {
  AreaRepository areaRepository;
  AreasBloc({required this.areaRepository}) : super(AreasState.initial()) {
    on<AreasEvent>((event, emit) async {
      emit(
        await event.map(
          started: (_) async => await _getAllAreas(),
          resetInstialState: (value) => AreasState.initial(),
          refreshData: (value) async => await _refreshData(),
          sort: (v) => _sortData(v.data, v.compare),
        ),
      );
    });
  }

  Future<AreasState> _getAllAreas() async {
    Either<ApiFailure, List<AreaModel>> resault =
        await areaRepository.getAllAreas();
    return resault.fold(
        (l) => const AreasState.failure(), (r) => AreasState.hasData(areas: r));
  }

  Future<AreasState> _refreshData() async {
    add(AreasEvent.resetInstialState());
    return _getAllAreas();
  }

  Future<AreasState> _sortData(List<AreaModel> areas,
      int Function(AreaModel, AreaModel)? compare) async {
    areas.sort(compare);
    return AreasState.hasData(areas: areas);
  }
}
