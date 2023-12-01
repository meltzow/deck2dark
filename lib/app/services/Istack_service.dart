import 'package:todark/app/data/stack.dart';

abstract class IStackService {
  Future<List<Stack>?> getAll(int boardId);
}
