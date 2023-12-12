import 'package:freezed_annotation/freezed_annotation.dart';

enum Rule {
  @JsonValue("ADMIN")
  admin,
  @JsonValue("USER")
  user;


}
