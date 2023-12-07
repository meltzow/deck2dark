import 'package:deck2dark/app/data/account.dart';

abstract class ICredentialService {
  Future<Account> getAccount();

  saveCredentials(String url, String username, String password, bool isAuth);
}
