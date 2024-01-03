import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';

part 'transfer_rate_model.g.dart';
part 'transfer_rate_model.freezed.dart';

@freezed
class TransferRateModel with _$TransferRateModel {
  const factory TransferRateModel({
    @JsonKey(disallowNullValue: true) required AreaModel fromArea,
    @JsonKey(disallowNullValue: true) required int id,
    @JsonKey(disallowNullValue: true) required AreaModel toArea,
    @JsonKey(disallowNullValue: true) required double nettPrice,
  }) = _TransferRateModel;

  factory TransferRateModel.fromJson(Map<String, dynamic> json) =>
      _$TransferRateModelFromJson(json);
}
