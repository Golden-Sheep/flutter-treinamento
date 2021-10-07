import 'package:myapp/domain/entities/entities.dart';

class AccountEntity {
  final String token;
  AccountEntity(this.token);

  factory AccountEntity.fromJson(Map json) => AccountEntity(json['acessToken']);
}
