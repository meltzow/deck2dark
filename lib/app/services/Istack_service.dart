import 'package:deck2dark/app/data/stack.dart';

abstract class IStackService {
  Future<List<Stack>?> getAll(int boardId);
}
