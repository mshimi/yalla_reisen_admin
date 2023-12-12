// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      role: $enumDecodeNullable(_$RuleEnumMap, json['role']),
      enabled: json['enabled'] as bool?,
      username: json['username'] as String?,
      accountNonExpired: json['accountNonExpired'] as bool?,
      credentialsNonExpired: json['credentialsNonExpired'] as bool?,
      accountNonLocked: json['accountNonLocked'] as bool?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'role': _$RuleEnumMap[instance.role],
      'enabled': instance.enabled,
      'username': instance.username,
      'accountNonExpired': instance.accountNonExpired,
      'credentialsNonExpired': instance.credentialsNonExpired,
      'accountNonLocked': instance.accountNonLocked,
    };

const _$RuleEnumMap = {
  Rule.admin: 'ADMIN',
  Rule.user: 'USER',
};
