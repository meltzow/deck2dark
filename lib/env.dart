import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:todark/app/services/Iauth_service.dart';
import 'package:todark/app/services/Iboard_service.dart';
import 'package:todark/app/services/Icard_service.dart';
import 'package:todark/app/services/Icredential_service.dart';
import 'package:todark/app/services/Ihttp_service.dart';
import 'package:todark/app/services/Istack_service.dart';
import 'package:todark/app/services/impl/auth_repository_impl.dart';
import 'package:todark/app/services/impl/board_repository_impl.dart';
import 'package:todark/app/services/impl/card_service_impl.dart';
import 'package:todark/app/services/impl/credential_service_impl.dart';
import 'package:todark/app/services/impl/http_service.dart';
import 'package:todark/app/services/impl/stack_repository_impl.dart';

enum BuildFlavor { production, development, staging }

BuildEnvironment? get env => _env;
BuildEnvironment? _env;

class BuildEnvironment {
  final BuildFlavor flavor;

  BuildEnvironment._init({required this.flavor});

  /// Sets up the top-level [env] getter on the first call only.
  static void init({@required flavor}) =>
      _env ??= BuildEnvironment._init(flavor: flavor);

  bool isDev() {
    return flavor == BuildFlavor.development;
  }
}

Future<void> initServices() async {
  print('starting services ...');

  await Get.putAsync<ICredentialService>(() => CredentialServiceImpl().init());
  Get.lazyPut<IHttpService>(() => HttpService());
  Get.lazyPut<IAuthService>(() => AuthRepositoryImpl());
  Get.lazyPut<IBoardService>(() => BoardRepositoryImpl());
  Get.lazyPut<IStackService>(() => StackRepositoryImpl());
  Get.lazyPut<Dio>(() => Dio());
  Get.lazyPut<ICardService>(() => CardServiceImpl());
}
