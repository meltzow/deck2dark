import 'package:get/get.dart';
import 'package:deck2dark/app/data/board.dart';
import 'package:deck2dark/app/services/Iboard_service.dart';
import 'package:deck2dark/app/services/Ihttp_service.dart';

class BoardRepositoryImpl extends GetxService implements IBoardService {
  final httpService = Get.find<IHttpService>();

  @override
  Future<List<Board>> getAllBoards() async {
    dynamic response = await httpService.getListResponse(
      "/index.php/apps/deck/api/v1/boards",
    );
    final dynamic t = response;
    List<Board> mediaList =
        (t as List).map((item) => Board.fromJson(item)).toList();
    return mediaList;
  }

  @override
  Future<Board> getBoard(int boardId) async {
    dynamic response =
        await httpService.get("/index.php/apps/deck/api/v1/boards/$boardId");
    Board board = Board.fromJson(response);
    return board;
  }
}
