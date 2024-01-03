part of 'city_bloc.dart';

@freezed
class CityEvent with _$CityEvent {
  const factory CityEvent.started({required int id}) = _Started;
  const factory CityEvent.delete({required int id}) = _Deleted;
  const factory CityEvent.update(
      {required CityModel cityModel, required int countryId}) = _Updated;

  const factory CityEvent.uploadImage(
      {required MultipartFile image, required int cityId}) = _UploadImage;

  const factory CityEvent.deleteImage({required int cityImageId}) =
      _DeleteImage;

        const factory CityEvent.deleteArea({required int areaId, required int cityId}) =
      _DeleteArea;
}
