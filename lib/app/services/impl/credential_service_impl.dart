import 'dart:convert';

import 'package:get/get.dart';
import 'package:todark/app/data/account.dart';
import 'package:todark/app/services/Icredential_service.dart';

class CredentialServiceImpl extends GetxService implements ICredentialService {
  final String keyUser = 'user';
  // late final GetStorage _box;

  Future<ICredentialService> init() async {
    // await GetStorage.init();
    // _box = GetStorage();
    // if (env!.isDev()) {
    //   saveCredentials("http://192.168.178.59:8080", "admin", "admin", true);
    // }
    return this;
  }

  @override
  Future<Account> getAccount() async {
    return Account(
      username: 'admin',
      password: 'admin',
      authData: 'Basic ${base64.encode(utf8.encode('admin:admin'))}',
      url: 'http://192.168.178.59:8080/',
      isAuthenticated: true,
    );
  }

  @override
  saveCredentials(
      String url, String username, String password, bool isAuth) async {
    String basicAuth =
        'Basic ${base64.encode(utf8.encode('$username:$password'))}';
    url = url.endsWith('/') ? url.substring(1) : url;
    var a = Account(
        username: username,
        password: password,
        authData: basicAuth,
        url: url,
        isAuthenticated: isAuth);
    // await _box.write(keyUser, a.toJson());
  }
}
