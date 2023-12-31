import 'package:get/get.dart';
import 'package:deck2dark/app/data/card.dart';
import 'package:deck2dark/app/services/Icard_service.dart';
import 'package:deck2dark/app/services/Ihttp_service.dart';

class CardServiceImpl extends GetxService implements ICardService {
  final httpService = Get.find<IHttpService>();

  @override
  Future<Card> createCard(int boardId, int stackId, String title) async {
    dynamic response = await httpService.post(
        "/index.php/apps/deck/api/v1/boards/${boardId}/stacks/${stackId}/cards",
        {'title': title});
    Card card = Card.fromJson(response);
    return card;
  }

  @override
  Future<Card> updateCard(
      int boardId, int stackId, int cardId, Card card) async {
    dynamic response = await httpService.put(
        "/index.php/apps/deck/api/v1/boards/$boardId/stacks/$stackId/cards/$cardId",
        card);
    Card cardResp = Card.fromJson(response);
    return cardResp;
  }

  @override
  Future<void> deleteCard(int boardId, int stackId, int cardId) {
    // TODO: implement deleteCard
    throw UnimplementedError();
  }

  @override
  Future<Card> getCard(int boardId, int stackId, int cardId) async {
    dynamic response = await httpService.get(
        "/index.php/apps/deck/api/v1/boards/$boardId/stacks/$stackId/cards/$cardId");
    Card cardResp = Card.fromJson(response);
    return cardResp;
  }
}
