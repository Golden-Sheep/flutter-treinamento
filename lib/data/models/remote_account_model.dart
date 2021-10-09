import 'package:myapp/data/http/http.dart';
import 'package:myapp/domain/entities/account_entity.dart';

class RemoteAccountModel {
  final String acessToken;
  RemoteAccountModel(this.acessToken);

  factory RemoteAccountModel.fromJson(Map json) {
    if (!json.containsKey('acessToken')) {
      throw HttpError.invalidData;
    }
    return RemoteAccountModel(json['acessToken']);
  }

  AccountEntity toEntity() => AccountEntity(acessToken);
}
