import 'package:get/get.dart';
import 'package:todark/app/data/stack.dart';
import 'package:todark/app/services/Ihttp_service.dart';
import 'package:todark/app/services/Istack_service.dart';

class StackRepositoryImpl extends GetxService implements IStackService {
  IHttpService get httpService => Get.find<IHttpService>();

  @override
  Future<List<Stack>?> getAll(int boardId) async {
    dynamic response = await httpService
        .getListResponse("/index.php/apps/deck/api/v1/boards/$boardId/stacks");
    List<Stack> mediaList =
        (response as List).map((tagJson) => Stack.fromJson(tagJson)).toList();
    return mediaList;
  }
}
