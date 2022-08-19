import 'package:blue_trade_app/data/models/project.dart';

///
abstract class ProjectService {
  ///
  Stream<List<Project>> watchAll();

  ///
  Future<void> add(Project project);

  ///
  Future<void> update(Project project);

  ///
  Future<void> removeById(String id);
}
