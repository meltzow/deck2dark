import 'package:todark/app/data/board.dart';

abstract class IBoardService {
  Future<List<Board>> getAllBoards();

  Future<Board> getBoard(int boardId);
}
