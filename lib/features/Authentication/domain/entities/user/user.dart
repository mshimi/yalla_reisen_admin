import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/entities/rule.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    //String? role,
    Rule? role,
    bool? enabled,
    String? username,
    bool? accountNonExpired,
    bool? credentialsNonExpired,
    bool? accountNonLocked,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
